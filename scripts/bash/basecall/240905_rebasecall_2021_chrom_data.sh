#!/bin/bash
#SBATCH --job-name=bc210615chrom
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --nodes=1
#SBATCH --gres=gpu:2
#SBATCH --time=240
#SBATCH --mem=100G
#SBATCH --partition=gpu
#SBATCH --error=/private/groups/brookslab/gabai/projects/Add-seq/scripts/sbatch/log/lsf_%j_%x.err      # error file
#SBATCH --output=/private/groups/brookslab/gabai/projects/Add-seq/scripts/sbatch/log/lsf_%j_%x.out     # output file
#SBATCH --mail-type=END,FAIL # email notification when job ends/fails
#SBATCH --mail-user=gabai@ucsc.edu  # email to notify


/private/groups/brookslab/gabai/tools/dorado-0.7.3-linux-x64/bin/dorado basecaller \
    /private/groups/brookslab/gabai/tools/dna_r9.4.1_e8_sup@v3.6 /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/mapping/20210615_0802_shelansky_chrom.pod5 \
    --emit-moves \
    --device cuda:all \
    --reference /private/groups/brookslab/gabai/projects/Add-seq/data/ref/sacCer3.fa >  /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/mapping/20210615_0802_shelansky_chrom.bam