from tqdm import tqdm
import pyarrow.parquet as pq
import random
import sys
from bisect import bisect_right
sys.path.insert(0, '/private/groups/brookslab/gabai/tools/NEMO/src/')
import importlib
from predict import *
from plot import *
importlib.reload(sys.modules['predict'])
importlib.reload(sys.modules['plot'])
from predict import *
from plot import *

dt_outpath = '/private/groups/brookslab/gabai/projects/Add-seq/scripts/addseq_manuscript/data/'
fig_outpath = '/private/groups/brookslab/gabai/projects/Add-seq/scripts/addseq_manuscript/figures/manuscript_figures/'
gtfFile = '/private/groups/brookslab/gabai/projects/Add-seq/data/ref/Saccharomyces_cerevisiae.R64-1-1.109.gtf'

chrom_190429_pred = '/private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/240912_dorado_20190429_chrom.tsv'
chrom_210615_pred = '/private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/240917_dorado_20210615_full.tsv'
chrom_sphe_pred = '/private/groups/brookslab/gabai/projects/Add-seq/data/chrom/modPredict/240905_prediction/240909_dorado_sphe_using_nuclei_model.tsv'



# genes to plot
# genes to plot
all_genes = {'CLN2':'chrXVI:66400-67550', 'ZDS2': 'chrXIII:51200-52700', 'NUP170':'chrII:74300-75800', 'APC1':'chrXIV:309955-311155', 
             'RPS14B':'chrX:73214-74414', 'zz-YIL161W':'chrIX:38868-40068', 'RDN':'chrXII:451060-468140', 
             'SMC4': 'chrXII:301632-302832', 'GLE1': 'chrIV:87675-88875', 'SPT6':'chrVII:719793-720993', 'VPS75':'chrXIV:184892-186092'}


plotModTrack(chrom_210615_pred, all_genes['CLN2'], ncluster=2, outpath=fig_outpath, prefix= f'Figure3D', 
             gtfFile=gtfFile, xticks_space = 150, na_thred=0.4)


plotModTrack(chrom_210615_pred, all_genes['CLN2'], ncluster=2, outpath=fig_outpath, prefix= f'Figure3D_2', 
             gtfFile=gtfFile, xticks_space = 150, na_thred=0.2)

plotModTrack(chrom_190429_pred, all_genes['NUP170'], ncluster=3, outpath=fig_outpath, prefix= f'Figure3E', 
             gtfFile=gtfFile, xticks_space = 150, na_thred=0.2)

