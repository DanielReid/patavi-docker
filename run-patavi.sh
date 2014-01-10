PATAVI_SERVER=$(docker run -d -p 3000:3000 -p 7740:7740 patavi/server)
PATAVI_WORKER=$(docker run -d patavi/worker)
