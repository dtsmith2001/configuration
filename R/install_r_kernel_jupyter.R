#
# install the IRkernel package, which makes available a Jupyter kernel for R
#
# Note: You must run this script by starting R with 'sudo R' from the Terminal.
#

install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'))
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()
