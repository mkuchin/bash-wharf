NODE=$1
IMAGE=$2
. settings
./runon.sh $NODE docker pull $REGISTRY_HOST/$IMAGE
