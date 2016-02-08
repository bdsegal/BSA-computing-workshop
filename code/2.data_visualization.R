library(data.table)

# visualization
library(mi)
library(pheatmap)
library(ggplot2)
library(reshape2)
library(rgl)
library(plot3D)

data_path <- "C:/Users/Segal/Dropbox/computing_workshop/data/"
setwd(data_path)

## Visualize missingness

data <- fread(paste(data_path, "H10.csv", sep = ""))
str(data)
data[,1] # special syntax for accessing elements of data.tables

data <- as.data.frame(data)
str(data)

keep <- grep("^Q",colnames(data))
keep

sub <- data[,keep]

mdf <- missing_data.frame(sub[1:100,])
image(mdf)

# heatmaps for visualizing matrices
C <- cor(sub[1:1000,], use="pairwise.complete.obs", method="spearman")
diag(C) <- NA

pheatmap(C, cluster_rows=FALSE, cluster_cols=FALSE, show_rownames=FALSE, show_colnames=FALSE, color=colorRampPalette(c("red","white", "navy"))(50))

pheatmap(abs(C), cluster_rows=FALSE, cluster_cols=FALSE, show_rownames=FALSE, show_colnames=FALSE, color=colorRampPalette(c("white", "navy"))(50))

windows()
heatmap(abs(C), na.rm=TRUE, Rowv=NA, Colv=NA)

# plots in ggplot2
# first introduce reshape2 and the melt function

# lines, adding smoothers, multiple layers, faceting

# 3d plots with rgl and plot3d
# ggobi

# matplot in base graphics

# tips:
# 1) use theme_bw('font size'), e.g. theme_bw(20)
# can also use theme_classic...others?
# 2) color="red" inside vs outside the aes statement