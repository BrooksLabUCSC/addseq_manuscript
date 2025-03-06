#!/bin/bash
#SBATCH --job-name=pred0819
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --time=1440
#SBATCH --mem=1500G
#SBATCH --partition=gpu
#SBATCH --error=/private/groups/brookslab/gabai/projects/Add-seq/scripts/sbatch/log/lsf_%j_%x.err      # error file
#SBATCH --output=/private/groups/brookslab/gabai/projects/Add-seq/scripts/sbatch/log/lsf_%j_%x.out     # output file
#SBATCH --mail-type=END,FAIL # email notification when job ends/fails
#SBATCH --mail-user=gabai@ucsc.edu  # email to notify

python3  /private/groups/brookslab/gabai/tools/NEMO/src/predict.py \
    --bam /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/mapping/20190819_chrom.sorted.bam \
    --parquet /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/mapping/20190819_chrom-sigalign.parquet \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --seq_len 400 \
    --step 200 \
    --weight /private/groups/brookslab/gabai/projects/Add-seq/data/train/240829_train_addseq/240829_train_nuclei_addseq_seqlen400_50_seq_per_batch_step1_batch_256_epoch100_resnet_best_model.pt  \
    --thread 4 \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ \
    --prefix 240909_dorado_20190819_chrom \
    --batch_size 256 \

python3  ~/tools/NEMO/src/plot.py \
    --plot aggregate \
    --pred /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/240909_dorado_20190819_chrom.tsv \
    --bed /private/groups/brookslab/gabai/projects/Add-seq/data/ref/Nucs_MittalPugh_sorted.bed \
    --mnase /private/groups/brookslab/gabai/projects/Add-seq/data/ref/sacCer3.bedgraph \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --label addseq_nuclei \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ \
    --prefix 240909_dorado_20190819_chrom_window2000_nuc \
    --window 2000