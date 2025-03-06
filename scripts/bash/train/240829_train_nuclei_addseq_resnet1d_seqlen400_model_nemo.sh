#!/bin/bash
#SBATCH --job-name=trainAdd400resnet
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --time=840
#SBATCH --mem=200G
#SBATCH --partition=gpu
#SBATCH --error=/private/groups/brookslab/gabai/projects/yeastMeth/log/lsf_%j_%x.err      # error file
#SBATCH --output=/private/groups/brookslab/gabai/projects/yeastMeth/log/lsf_%j_%x.out     # output file
#SBATCH --mail-type=END,FAIL # email notification when job ends/fails
#SBATCH --mail-user=gabai@ucsc.edu  # email to notify
##SBATCH --nodelist=phoenix-01

source /private/groups/brookslab/gabai/miniconda3/bin/activate addseq

exp_id='240829_train_nuclei_addseq_seqlen400_50_seq_per_batch_step1_batch_256_epoch100'
model='resnet'
outdir='240829_train_addseq'

python3  ~/tools/NEMO/src/train.py \
    --exp_id $exp_id \
    --wandb_id train_nuclei_addseq_dorado \
    --neg_data /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_0-sigalign.parquet \
    --pos_data /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/sphe/pod5/220308_500uM_angelicin-sigalign.parquet \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/train/$outdir/ \
    --save_test \
    --seq_len 400 \
    --batch_size 256 \
    --model_type $model \
    --epochs 100 \
    --step 1 \
    --steps_per_epoch 1000 \
    --val_steps_per_epoch 500 \
    --max_seqs 50 \

python3  ~/tools/NEMO/src/test.py \
    --exp_id $exp_id \
    --model_type $model \
    --test_dataset /private/groups/brookslab/gabai/projects/Add-seq/data/train/$outdir/test_dataset_${exp_id}_${model}.pt \
    --weight /private/groups/brookslab/gabai/projects/Add-seq/data/train/$outdir/${exp_id}_${model}_best_model.pt \
    --outpath  /private/groups/brookslab/gabai/projects/Add-seq/data/train/$outdir/ \
    --batch_size 512