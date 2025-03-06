python3  /private/groups/brookslab/gabai/tools/NEMO/src/predict.py \
    --bam /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_0.sorted.bam \
    --parquet /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_0-sigalign.parquet \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --seq_len 400 \
    --step 200 \
    --weight /private/groups/brookslab/gabai/projects/Add-seq/data/train/240829_train_addseq/240829_train_nuclei_addseq_seqlen400_50_seq_per_batch_step1_batch_256_epoch100_resnet_best_model.pt  \
    --thread 4 \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ \
    --prefix 240911_dorado_220308_ang_0 \
    --batch_size 256 \

python3  ~/tools/NEMO/src/plot.py \
    --plot aggregate \
    --pred /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/240911_dorado_220308_ang_0.tsv \
    --bed /private/groups/brookslab/gabai/projects/Add-seq/data/ref/Nucs_MittalPugh_sorted.bed \
    --mnase /private/groups/brookslab/gabai/projects/Add-seq/data/ref/sacCer3.bedgraph \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --label addseq_nuclei \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ \
    --prefix 240911_dorado_220308_ang_0_window2000_nuc \
    --window 2000

python3  /private/groups/brookslab/gabai/tools/NEMO/src/predict.py \
    --bam /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_500.sorted.bam \
    --parquet /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_500-sigalign.parquet \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --seq_len 400 \
    --step 200 \
    --weight /private/groups/brookslab/gabai/projects/Add-seq/data/train/240829_train_addseq/240829_train_nuclei_addseq_seqlen400_50_seq_per_batch_step1_batch_256_epoch100_resnet_best_model.pt  \
    --thread 4 \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ \
    --prefix 240911_dorado_220308_ang_500 \
    --batch_size 256 \

python3  ~/tools/NEMO/src/plot.py \
    --plot aggregate \
    --pred /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/240911_dorado_220308_ang_500.tsv \
    --bed /private/groups/brookslab/gabai/projects/Add-seq/data/ref/Nucs_MittalPugh_sorted.bed \
    --mnase /private/groups/brookslab/gabai/projects/Add-seq/data/ref/sacCer3.bedgraph \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --label addseq_nuclei \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ \
    --prefix 240911_dorado_220308_ang_500_window2000_nuc \
    --window 2000


### new prediction in Feb 19 2024

python3  /private/groups/brookslab/gabai/tools/NEMO/src/predict.py \
    --bam /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_0.sorted.bam \
    --parquet /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_0-sigalign.parquet \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --seq_len 400 \
    --step 200 \
    --weight /private/groups/brookslab/gabai/projects/Add-seq/data/train/240829_train_addseq/240829_train_nuclei_addseq_seqlen400_50_seq_per_batch_step1_batch_256_epoch100_resnet_best_model.pt  \
    --thread 4 \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ \
    --prefix 250219_dorado_220308_ang_0 \
    --batch_size 256 \
    --sample_mean 83 \
    --sample_std 16

python3  /private/groups/brookslab/gabai/tools/NEMO/src/predict.py \
    --bam /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_500.sorted.bam \
    --parquet /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_500-sigalign.parquet \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --seq_len 400 \
    --step 200 \
    --weight /private/groups/brookslab/gabai/projects/Add-seq/data/train/240829_train_addseq/240829_train_nuclei_addseq_seqlen400_50_seq_per_batch_step1_batch_256_epoch100_resnet_best_model.pt  \
    --thread 4 \
    --outpath /private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/ \
    --prefix 250219_dorado_220308_ang_500 \
    --batch_size 256 \
    --sample_mean 83 \
    --sample_std 16