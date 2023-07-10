if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}
remotes::install_github("mojaveazure/seurat-disk")
remotes::install_github("satijalab/seurat-data")

library(Seurat)
library(SeuratData)
library(SeuratDisk)

# file path for the RDS file
file.path = 'data/fetal_organ_atlas.RDS'

# read the RDS file
seurat.file = readRDS(file.path)

# change extension to h5Seurat
file.path.h5Seurat = gsub("RDS", "h5Seurat", file.path)

# save the h5Seurat file and convert to h5ad
SaveH5Seurat(seurat.file, filename = file.path.h5Seurat, overwrite = TRUE)
Convert(file.path.h5Seurat, dest = "h5ad", overwrite = TRUE)