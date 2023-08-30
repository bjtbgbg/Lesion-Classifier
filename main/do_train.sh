# ###### Model A: uniformer-B with mixup

# fold1
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold1.txt --val_anno_file data/classification_dataset/labels/val_fold1.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=4 --epochs 300 \
--output ./ckpts/output_uniformerB_mixup_bs4/fold1 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--is-mixup --alpha 0.5

# fold2
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold2.txt --val_anno_file data/classification_dataset/labels/val_fold2.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=4 --epochs 300 \
--output ./ckpts/output_uniformerB_mixup_bs4/fold2 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--is-mixup --alpha 0.5

# fold3
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold3.txt --val_anno_file data/classification_dataset/labels/val_fold3.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=4 --epochs 300 \
--output ./ckpts/output_uniformerB_mixup_bs4/fold3 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--is-mixup --alpha 0.5

# fold4
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold4.txt --val_anno_file data/classification_dataset/labels/val_fold4.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=4 --epochs 300 \
--output ./ckpts/output_uniformerB_mixup_bs4/fold4 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--is-mixup --alpha 0.5

# fold5
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold5.txt --val_anno_file data/classification_dataset/labels/val_fold5.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=4 --epochs 300 \
--output ./ckpts/output_uniformerB_mixup_bs4/fold5 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--is-mixup --alpha 0.5

###### Model B: uniformer-B with channel cutout

## fold1
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold1.txt --val_anno_file data/classification_dataset/labels/val_fold1.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=8 --epochs 300 \
--output ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold1 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros

## fold2
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold2.txt --val_anno_file data/classification_dataset/labels/val_fold2.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=8 --epochs 300 \
--output ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold2 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros

## fold3
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold3.txt --val_anno_file data/classification_dataset/labels/val_fold3.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=8 --epochs 300 \
--output ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold3 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros

## fold4
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold4.txt --val_anno_file data/classification_dataset/labels/val_fold4.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=8 --epochs 300 \
--output ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold4 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros

## fold5
python ./main/train.py --workers 24 --data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels/train_fold5.txt --val_anno_file data/classification_dataset/labels/val_fold5.txt \
--model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 --batch-size=8 --epochs 300 \
--output ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold5 \
--initial-checkpoint ./pretrained_weights/uniformer_base_k400_8x8.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros