import torch
import torch.nn as nn

class MultiClassWeightedCELoss(nn.Module):
    def __init__(self, alpha=[0.2,0.3,0.5], reduction='mean'):
        super(MultiClassWeightedCELoss, self).__init__()
        self.alpha = alpha.cuda()
        self.reduction = reduction
    
    def forward(self, pred, target):
        alpha = self.alpha[target]
        log_softmax = torch.log_softmax(pred, dim=1)
        logpt = torch.gather(log_softmax, dim=1, index=target.view(-1, 1))  # 取出每个样本在类别标签位置的log_softmax值, shape=(bs, 1)
        logpt = logpt.view(-1)  # 降维，shape=(bs)
        ce_loss = -logpt  # 对log_softmax再取负，就是交叉熵了
        ce_loss = alpha * ce_loss
        if self.reduction == "mean":
            # return torch.mean(ce_loss)
            return torch.sum(ce_loss) / alpha.sum()
        if self.reduction == "sum":
            return torch.sum(ce_loss)
        return ce_loss