## fold1
python ./main/train_cutout.py --workers 24 \
--data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels-0802-5fold/train_fold1.txt \
--val_anno_file data/classification_dataset/labels-0802-5fold/val_fold1.txt \
--batch-size=8  --model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 \
--epochs 300 --output ./ckpts_0802_5fold/output_uniformerB_0805_pretr_bs8_cutc-1-0.5-zeros/ \
--initial-checkpoint ../pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros

## fold2
python ./main/train_cutout.py --workers 24 \
--data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels-0802-5fold/train_fold2.txt \
--val_anno_file data/classification_dataset/labels-0802-5fold/val_fold2.txt \
--batch-size=8  --model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 \
--epochs 300 --output ./ckpts_0802_5fold/output_uniformerB_0805_pretr_bs8_cutc-1-0.5-zeros/ \
--initial-checkpoint ../pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros

## fold3
python ./main/train_cutout.py --workers 24 \
--data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels-0802-5fold/train_fold3.txt \
--val_anno_file data/classification_dataset/labels-0802-5fold/val_fold3.txt \
--batch-size=8  --model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 \
--epochs 300 --output ./ckpts_0802_5fold/output_uniformerB_0805_pretr_bs8_cutc-1-0.5-zeros/ \
--initial-checkpoint ../pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros

## fold4
python ./main/train_cutout.py --workers 24 \
--data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels-0802-5fold/train_fold4.txt \
--val_anno_file data/classification_dataset/labels-0802-5fold/val_fold4.txt \
--batch-size=8  --model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 \
--epochs 300 --output ./ckpts_0802_5fold/output_uniformerB_0805_pretr_bs8_cutc-1-0.5-zeros/ \
--initial-checkpoint ../pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros

## fold5
python ./main/train_cutout.py --workers 24 \
--data_dir data/classification_dataset/images \
--train_anno_file data/classification_dataset/labels-0802-5fold/train_fold5.txt \
--val_anno_file data/classification_dataset/labels-0802-5fold/val_fold5.txt \
--batch-size=8  --model uniformer_base_IL --lr 1e-4 --warmup-epochs 5 \
--epochs 300 --output ./ckpts_0802_5fold/output_uniformerB_0805_pretr_bs8_cutc-1-0.5-zeros/ \
--initial-checkpoint ../pretrained_weights/uniformer_base_k400_8x8_partial.pth \
--train_transform_list random_crop z_flip x_flip y_flip rotation channel_cutout \
--cutcnum 1 --cutcprob 0.5 --cutcmode zeros