# merge two groups of model predictions.
python ./main/model_ensemble.py \
--json-dirs './pred_results/output_uniformerB_mixup_bs4' './pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros' \
--test-txt './data/test_set/labels_test_inaccessible.txt' \
--merge-result-path './pred_results/merged_score.json'