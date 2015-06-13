FROM patavi/base

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q r-base-core
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q libxt-dev libcairo2-dev
RUN R -e 'install.packages("Rserve", repos="http://cran.rstudio.com/"); if (!require("Rserve")) quit(save="no", status=8)'
RUN R -e 'install.packages("RJSONIO", repos="http://cran.rstudio.com/"); if (!require("RJSONIO")) quit(save="no", status=8)'
RUN R -e 'install.packages("Cairo", repos="http://cran.rstudio.com/"); if (!require("Cairo")) quit(save="no", status=8)'
RUN R -e 'install.packages("base64enc", repos="http://cran.rstudio.com/"); if (!require("base64enc")) quit(save="no", status=8)'
