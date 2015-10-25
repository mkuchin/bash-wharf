NODE=$1
NAME=$2
. runon.sh $NODE
docker kill $NAME || exit $?;

#todo rotate with for
docker rm $NAME.2
docker rename $NAME.1 $NAME.2
docker rename $NAME $NAME.1
