#!/bin/bash
#SBATCH --job-name=pred220331chrIV
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --time=720
#SBATCH --mem=500G
#SBATCH --partition=gpu
#SBATCH --error=/private/groups/brookslab/gabai/projects/Add-seq/scripts/sbatch/log/lsf_%j_%x.err
#SBATCH --output=/private/groups/brookslab/gabai/projects/Add-seq/scripts/sbatch/log/lsf_%j_%x.out
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=gabai@ucsc.edu

source ~/miniconda3/bin/activate addseq

python3 /private/groups/brookslab/gabai/tools/NEMO/src/predict.py --bam /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/mapping/220331_Nuclei_Ang500_doradoBasecalled_movesOut.sorted.bam --parquet /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/mapping/220331_Nuclei_Ang500-sigalign.parquet --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa --seq_len 400 --step 200 --weight /private/groups/brookslab/gabai/projects/Add-seq/data/train/240829_train_addseq/240829_train_nuclei_addseq_seqlen400_50_seq_per_batch_step1_batch_256_epoch100_resnet_best_model.pt --thread 4 --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ --prefix 240921_dorado_20220331_mean70_std14_chrIV --region chrIV --batch_size 256 --sample_mean 70.0 --sample_std 14.0
