# fold1
python ./main/validate.py \
--data_dir data/lldmmri_test_set/classification_dataset/images/ \
--val_anno_file ./data/lldmmri_test_set/classification_dataset/labels/labels_test_inaccessible_guess.txt \
--model uniformer_base_IL \
--checkpoint ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/20230627-200503-uniformer_base_IL/best_f1_checkpoint-170.pth.tar -j 0 \
--results-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold1 \
--score-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold1 -b 1

# fold2
python ./main/validate.py \
--data_dir data/lldmmri_test_set/classification_dataset/images/ \
--val_anno_file ./data/lldmmri_test_set/classification_dataset/labels/labels_test_inaccessible_guess.txt \
--model uniformer_base_IL \
--checkpoint ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/20230627-222741-uniformer_base_IL/best_f1_checkpoint-88.pth.tar -j 0 \
--results-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold2 \
--score-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold2 -b 1

# fold3
python ./main/validate.py \
--data_dir data/lldmmri_test_set/classification_dataset/images/ \
--val_anno_file ./data/lldmmri_test_set/classification_dataset/labels/labels_test_inaccessible_guess.txt \
--model uniformer_base_IL \
--checkpoint ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/20230628-004027-uniformer_base_IL/best_f1_checkpoint-112.pth.tar -j 0 \
--results-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold3 \
--score-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold3 -b 1

# fold4
python ./main/validate.py \
--data_dir data/lldmmri_test_set/classification_dataset/images/ \
--val_anno_file ./data/lldmmri_test_set/classification_dataset/labels/labels_test_inaccessible_guess.txt \
--model uniformer_base_IL \
--checkpoint ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/20230628-022431-uniformer_base_IL/best_f1_checkpoint-98.pth.tar -j 0 \
--results-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold4 \
--score-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold4 -b 1

# fold5
python ./main/validate.py \
--data_dir data/lldmmri_test_set/classification_dataset/images/ \
--val_anno_file ./data/lldmmri_test_set/classification_dataset/labels/labels_test_inaccessible_guess.txt \
--model uniformer_base_IL \
--checkpoint ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/20230628-040522-uniformer_base_IL/best_f1_checkpoint-152.pth.tar -j 0 \
--results-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold5 \
--score-dir ./ckpts_sp2/output_uniformerB_0627_pretr_bs8_cutc-1-0.5-zeros/eval_on_final/fold5 -b 1