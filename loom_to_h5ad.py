#!/usr/bin/env python

import scanpy as sc

data_path = 'data/GSE156793_S3_gene_count.loom'
data = sc.read_loom(data_path,obs_names="obs_names",var_names="var_names")
data_path_h5ad = data_path.replace(".loom",".h5ad")
data.write(data_path_h5ad)
