###### Step 1. Model Groups A Inference (uniformer-B with mixup)

# fold1
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_mixup_bs4/fold1_best_f1_checkpoint-54.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_mixup_bs4/fold1 --score-dir ./pred_results/output_uniformerB_mixup_bs4/fold1 -b 1

# fold2
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_mixup_bs4/fold2_best_f1_checkpoint-218.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_mixup_bs4/fold2 --score-dir ./pred_results/output_uniformerB_mixup_bs4/fold2 -b 1

# fold3
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_mixup_bs4/fold3_best_f1_checkpoint-160.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_mixup_bs4/fold3 --score-dir ./pred_results/output_uniformerB_mixup_bs4/fold3 -b 1

# fold4
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_mixup_bs4/fold4_best_f1_checkpoint-189.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_mixup_bs4/fold4 --score-dir ./pred_results/output_uniformerB_mixup_bs4/fold4 -b 1

# fold5
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_mixup_bs4/fold5_best_f1_checkpoint-232.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_mixup_bs4/fold5 --score-dir ./pred_results/output_uniformerB_mixup_bs4/fold5 -b 1


###### Step 2. Model Groups A Inference (uniformer-B with channel cutout)

# fold1
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold1_best_f1_checkpoint-76.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold1 --score-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold1 -b 1

# fold2
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold2_best_f1_checkpoint-227.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold2 --score-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold2 -b 1

# fold3
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold3_best_f1_checkpoint-151.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold3 --score-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold3 -b 1

# fold4
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold4_best_f1_checkpoint-153.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold4 --score-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold4 -b 1

# fold5
python ./main/predict.py --model uniformer_base_IL --data_dir data/test_set/images --val_anno_file data/test_set/labels_test_inaccessible.txt \
--checkpoint ./ckpts/output_uniformerB_bs8_cutc-1-0.5-zeros/fold5_best_f1_checkpoint-123.pth.tar -j 0 \
--results-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold5 --score-dir ./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros/fold5 -b 1
