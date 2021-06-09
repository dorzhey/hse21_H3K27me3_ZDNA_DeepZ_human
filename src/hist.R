library(ggplot2)
library(dplyr)
library(tidyr)   # replace_na
library(tibble)  # column_to_rownames

###

# NAME <- 'H3K27me3_MCF-7_ENCFF151QZZ.hg19'
# NAME <- 'H3K27me3_MCF-7_ENCFF831BNS.hg19'
# NAME <- 'DeepZ'
NAME <- 'H3K27me3_MCF-7.intersect_with_DeepZ'
OUT_DIR <- 'images/'

setwd("C://data_bio_hw//sem3//")
###

bed_df <- read.delim(paste0('data/', NAME, '.bed'), as.is = TRUE, header = FALSE)
# colnames(bed_df) <- c('chrom', 'start', 'end', 'name', 'score')
colnames(bed_df) <- c('chrom', 'start', 'end')
bed_df$len <- bed_df$end - bed_df$start
head(bed_df)

# hist(bed_df$len)

ggplot(bed_df) +
  aes(x = len) +
  geom_histogram() +
  ggtitle(NAME, subtitle = sprintf('Number of peaks = %s', nrow(bed_df))) +
  theme_bw()
ggsave(paste0('len_hist.', NAME, '.pdf'), path = OUT_DIR)
