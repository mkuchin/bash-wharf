NODE=$1
APP=$2
IMAGE=$3
#optional param, default=$APP
IMAGE=${APP:-$IMAGE}
. settings
. runon.sh $NODE
ENV_FILE=apps/$APP.env 
if [ -e $ENV_FILE ]
then
  PARAMS=$(cat $ENV_FILE)
fi
docker run -d --name=$APP --net=host $PARAMS $REGISTRY_HOST/$IMAGE
