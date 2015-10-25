NODE=$1
APP=$2
IMAGE=$3
#optional param, default=$APP
IMAGE=${APP:-$IMAGE}
. runon.sh $NODE 
docker run -d --name=$APP --net=host build.devspire.com.au/$IMAGE
