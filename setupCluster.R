install.packages("snow", repos = "http://cran.cnr.berkeley.edu")
# Needs to be installed on all worker machines  also.
library(parallel)

phall = list(host = "phall",
             rscript = "/usr/lib64/R/bin/Rscript")

hilbert = list(host = "hilbert",
             rscript = "/usr/local/R-3.4.1/lib64/R/bin/Rscript")

cl = makeCluster(c(rep(list(hilbert), 2), 
                   rep(list(phall), 3)),
                 type = "SOCK")