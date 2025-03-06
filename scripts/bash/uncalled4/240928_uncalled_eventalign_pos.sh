uncalled4 align \
    --ref /private/groups/brookslab/gabai/tools/ref/yst/sacCer3.fa \
    --reads /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_500.pod5 \
    --bam-in /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_500.sorted.bam \
    -p 8 \
    --eventalign-out /private/groups/brookslab/gabai/projects/Add-seq/data/ctrl/pod5/220308_ang_500.sorted.eventalign.tsv \
    --eventalign-flags print-read-names,signal-index,samples \
    --pore-model dna_r9.4.1_400bps_6mer