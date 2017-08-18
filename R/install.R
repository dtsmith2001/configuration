depends <- c("Depends", "Imports", "LinkingTo")

install.packages(c("ctv", "devtools"), dependencies=depends, quiet=TRUE)

require(ctv)
require(devtools)

my_views <- c("TimeSeries", "MachineLearning", "Robust", "Optimization", "Multivariate", "HighPerformanceComputing",
              "Finance", "NumericalMathematics", "Distributions", "DifferentialEquations", "Econometrics", "Robust",
              "ReproducibleResearch", "NaturalLanguageProcessing", "Multivariate")

install.packages("ggplot2", dependencies = depends, quiet=TRUE)
install.packages("ada", dependencies = depends, quiet=TRUE)
install.packages("Rcpp", dependencies = depends, quiet=TRUE)
install.packages("rbenchmark", dependencies = depends, quiet=TRUE)
install.packages("RSNNS", dependencies = depends, quiet=TRUE)
install.packages("Quandl", dependencies = depends, quiet=TRUE)
install.packages("XML", dependencies = depends, quiet=TRUE)
install.views(views = my_views, dependencies = depends, quiet=TRUE)

# following are to build RcppGallery
install.packages("RcppEigen", depencencies = depends, quiet=TRUE)
install.packages("RcppArmadillo", dependencies = depends, quiet=TRUE)
install.packages("RcppProgress", dependencies = depends, quiet=TRUE)
install.packages("RcppGSL", dependencies = depends, quiet=TRUE)
install.packages("RcppParallel", dependencies = depends, quiet=TRUE)
install.packages("TTR", dependencies = depends, quiet=TRUE)
install.packages("xts", dependencies = depends, quiet=TRUE)
install.packages("BH", dependencies = depends, quiet=TRUE)
install.packages("bigmemory", dependencies = depends, quiet=TRUE)
install.packages("fields", dependencies = depends, quiet=TRUE)
install.packages("bayesm", dependencies = depends, quiet=TRUE)
install.packages("mvtnorm", dependencies = depends, quiet=TRUE)
install.packages("numbers", dependencies = depends, quiet=TRUE)
install.packages("Zelig", dependencies = depends, quiet=TRUE)
install.packages("knitr", dependencies = depends, quiet=TRUE)
install.packages("benchmark", dependencies = depends, quiet=TRUE)
install.packages("rbenchmark", dependencies = depends, quiet=TRUE)
install.packages("microbenchmark", dependencies = depends, quiet=TRUE)
install.packages("sensitivity", dependencies = depends, quiet=TRUE)

print("To update packages, use update.packages(ask=FALSE, checkBuilt=TRUE)")
