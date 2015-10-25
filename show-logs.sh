NODE=$1
NAME=$2
. runon.sh $NODE 
docker logs $NAME
