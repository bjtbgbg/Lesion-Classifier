import json
import os
import numpy as np                   
import argparse

def write_score2json(score_info, valid_txt, save_name):
    score_info = score_info.astype(float)
    score_list = []
    anno_info = np.loadtxt(valid_txt, dtype=np.str_)
    for idx, item in enumerate(anno_info):
        id = item[0].rsplit('/', 1)[-1]
        score = list(score_info[idx])
        pred = score.index(max(score))
        pred_info = {
            'image_id': id,
            'prediction': pred,
            'score': score,
        }
        score_list.append(pred_info)
    json_data = json.dumps(score_list, indent=4)
    # save_name = os.path.join(results_dir, '%s.json' % team_name)
    file = open(save_name, 'w')
    file.write(json_data)
    file.close()


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Training Config', add_help=False)
    parser.add_argument('--json-dirs', type=str, metavar='FILENAME', nargs='+',
                    default=['./pred_results/output_uniformerB_mixup_bs4',
                    './pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros'],
                    help='Directory to output json files.')
    parser.add_argument('--test-txt', type=str, metavar='FILENAME', default='./data/test_set/labels_test_inaccessible.txt',
                    help='List of test set.')
    parser.add_argument('--merge-result-path', type=str, metavar='FILENAME', default='./pred_results/score.json',
                    help='Path to save merged results.')
    args = parser.parse_args()

    # model predictions
    json_dirs = args.json_dirs
    valid_txt = args.test_txt
    merge_result_path = args.merge_result_path
    
    weights = [0.3, 0.7]    # weights of predictions of different model groups
    num_fold = 5
    num_test = 104
    avg_pred = np.zeros(shape=(num_test,7))
    for j in range(len(json_dirs)):
        json_dir = json_dirs[j]
        pred_arr = np.zeros(shape=(num_test,7))
        # calculate mean average of cross-validation models
        for i in range(1, num_fold+1):
            pred_list = []
            json_path = os.path.join(json_dir, 'fold'+str(i), 'score.json')
            with open(json_path, 'r') as fr:
                result = json.load(fr)
            for res in result:
                pred = res["score"]
                pred_list.append(pred)
            pred_arr += np.stack(pred_list).astype('float')
        avg_pred += (pred_arr / num_fold) * weights[j]

    write_score2json(avg_pred, valid_txt, merge_result_path)