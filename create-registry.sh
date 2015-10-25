. settings
PRIVATE_IP=`docker-machine ssh $BUILD_NODE "ifdata -pa eth1"`
docker-machine ssh $BUILD_NODE "mkdir -p /opt/data/registry"
echo IP: $PRIVATE_IP
. runon.sh $BUILD_NODE 
docker run -d -v /opt/data/registry:/var/lib/registry -p $PRIVATE_IP:80:5000 --name=registry --restart=always registry:2 
