## Usage
First, clone the repository locally:
```
$ git clone https://github.com/bjtbgbg/Lesion-Classifier.git
```
To install all required dependencies, run:
```
$ pip install -r requirements.txt
```
## Data Preparation
### 1. Input data
We used the provided lesion-centered 3D ROIs from the `classification_dataset` folder for modeling training and inference.
### 2. Data division
We randomly generated a 5-fold cross-validated dataset. You can refer to the divided label files in the following path `./data/classification_dataset/labels`.

## Predict
### 1. Model inference 

Download [trained model weights](https://pan.baidu.com/s/11uyrd9fPK8rskCMJSz6pXA?pwd=dt94) (Password: dt94) of two sets of 5-fold cross-validation models and place them in the `./ckpts` folder. Then use the following command to make predictions.

```
$ sh ./main/do_prediction.sh
```
This will produce prediction files under the subfolders of `./pred_results/output_uniformerB_bs8_cutc-1-0.5-zeros` and `./pred_results/output_uniformerB_mixup_bs4`.

### 2. Model ensembling

Merge scores from all the prediction files above using the following command.

```
$ sh ./main/do_ensemble.sh
```
This will generate the final prediction file `./pred_results/merged_score.json`.

## Training
The pretrained model was extracted from the official repository of [Uniformer-B](https://github.com/Sense-X/UniFormer/tree/main/video_classification) (specified as Kinetics-400, #Frame:8x1x4, Sampling Stride:8) and layers of mismatching shapes was removed.  Download the [pruned pretrained model](https://pan.baidu.com/s/1pAw30E5hIGRHKC9wqbWmXQ?pwd=m2vi) (Password：m2vi) and put it into `./pretrained_weights/`, then use the following command to train two sets of 5-fold cross-validation models.

```
sh ./main/do_train.sh
```
