setwd('C://data_bio_hw//sem3//src//')

package.check <- function(x) {
  if (!require(x, character.only = TRUE)) {
    install.packages(x, dependencies = TRUE)
    library(x, character.only = TRUE)
  }
}

# Installing BiocManager
#if (!requireNamespace("BiocManager", quietly = TRUE))
#  install.packages("BiocManager")
#BiocManager::install("ChIPseeker")
#BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene", force=TRUE)
#BiocManager::install("clusterProfiler", force=TRUE)
#BiocManager::install("GenomicFeatures", force=TRUE)
#BiocManager::install("org.Hs.eg.db", force=TRUE)
#BiocManager::install("ChIPpeakAnno", force=TRUE)



# Libraries from BiocManager
package.check("ChIPseeker")
package.check("TxDb.Hsapiens.UCSC.hg19.knownGene")
package.check("clusterProfiler")
package.check("GenomicFeatures")
package.check("org.Hs.eg.db")
package.check("ChIPpeakAnno")

package.check("ggplot2")
package.check("dplyr")
package.check("tidyr")
package.check("tibble")

# constants

DATA_DIR <- '../data/'
OUT_DIR <- '../images/'