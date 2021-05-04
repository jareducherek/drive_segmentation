# Driving Segmentation

A semantic segmentation project for UT Digital Video Processing, using [@comma.ai](https://github.com/commaai)'s [comma10k dataset](https://github.com/commaai/comma10k).

We updated the original [comma10k-baseline](https://github.com/YassineYousfi/comma10k-baseline) to pytorch lightning 1.0, and used
[Trans2Seg](https://github.com/xieenze/Trans2Seg) implemented in a fork of the
[pytorch segmentation models](https://github.com/qubvel/segmentation_models.pytorch) repo.
This transformer model with a ResNet backbone reaches 0.073 validation CCE loss.

## Installation instructions
- clone [my fork] of pytorch_segmentation.models
- navigate to the fork and `pip install -e .`
- clone this repo
- navigate to this repo and install required packages
```
make create_environment
conda activate drive_segmentation
make requirements
```

## How to use
This uses one stage of 512x512 images for training.
```
python3 train_lit_model.py --backbone efficientnet-b4 --version second-stage --gpus 2 --batch-size 7 --learning-rate 5e-5 --epochs 30 --height 512 --width 512 --augmentation-level hard
```

## Dependecies
Python 3.5+, pytorch 1.6+ and dependencies listed in requirements.txt.
