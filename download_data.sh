mkdir data
cd data && gdown --folder 1IzgFjdgm_RjCHe2WOkIQa4BRdgKuSglL && mv co3dv2_toy_examples co3d_toy && cd ..

mkdir checkpoints
mkdir checkpoints/sd
wget https://huggingface.co/CompVis/stable-diffusion-v-1-3-original/resolve/main/sd-v1-3.ckpt
mv sd-v1-3.ckpt checkpoints/sd/sd-v1-3-vae.ckpt

cd checkpoints && gdown --folder 1Czsnf-PVjwH-HL7K5mTt_kF9u-PVWRyL && mv sparsefusion_weights sf && cd ..

cd external && git clone https://github.com/facebookresearch/co3d.git && cd ..
pip install -e external/co3d
python external/co3d/co3d/download_dataset.py --download_folder data/co3d --download_categories donut
