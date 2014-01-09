FROM patavi/build-ready

ADD patavi /var/lib/patavi/src
RUN chown -R patavi.patavi /var/lib/patavi/src
RUN su - patavi -c 'cd src/common && lein install'
RUN su - patavi -c 'cd src/worker && lein with-profile production uberjar && mv target/patavi.worker*-standalone.jar ../../'
RUN su - patavi -c 'cd src/server && lein with-profile production uberjar && mv target/patavi.server*-standalone.jar ../../'

