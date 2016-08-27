require(ctv)
require(devtools)
install.packages("ctv", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.packages("ada", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.packages("devtools", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.packages("Rcpp", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.packages("rbenchmark", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.packages("RSNNS", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.packages("Quandl", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.packages("xlsx", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.packages("XML", dependencies = c("Depends", "Imports", "LinkingTo"), quiet=TRUE)
install.views(c("TimeSeries", "MachineLearning", "Robust", "Optimization", "Multivariate", "HighPerformanceComputing", "Finance",
								"NumericalMathematics", "Distributions", "DifferentialEquations", "Econometrics", "Robust",
								"ReproducibleResearch", "NaturalLanguageProcessing", "Multivariate"), quiet=TRUE,
								dependencies = c("Depends", "Imports", "LinkingTo"))

# To update packages, use update.packages(ask=FALSE, checkBuilt=TRUE)