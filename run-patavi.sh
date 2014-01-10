PATAVI_SERVER=$(docker run -d -name patavi_server -p 3000:3000 patavi/server)
PATAVI_WORKER=$(docker run -d -link patavi_server:patavi_server patavi/slow)
