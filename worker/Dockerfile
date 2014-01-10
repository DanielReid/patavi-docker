FROM patavi/base

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q r-base-core
RUN R -e 'install.packages("Rserve", repos="http://www.rforge.net/"); if (!require("Rserve")) quit(save="no", status=8)'
RUN R -e 'install.packages("RJSONIO", repos="http://cran.rstudio.com/"); if (!require("RJSONIO")) quit(save="no", status=8)'

USER patavi
ENV HOME /var/lib/patavi
ENV BROKER_SOCKET tcp://172.17.42.1:7740
ENTRYPOINT ["/var/lib/patavi/bin/patavi-worker", "--method", "echo", "--rserve", "-n", "1", "--file", "/var/lib/patavi/src/worker/resources/pirate/echo.R"]
