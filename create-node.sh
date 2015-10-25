export DIGITALOCEAN_PRIVATE_NETWORKING=true
export DIGITALOCEAN_REGION=sgp1
. settings
export DIGITALOCEAN_ACCESS_TOKEN=$(cat token)
NODE=$1
docker-machine create --driver digitalocean $NODE

#minor host changes
docker-machine ssh $NODE "apt-get install -yq haveged moreutils"
docker-machine ssh $NODE ". /etc/default/docker && echo DOCKER_OPTS=\'\$DOCKER_OPTS --insecure-registry $REGISTRY_HOST\' > /etc/default/docker"
docker-machine ssh $NODE "service docker restart"

echo IP private: `docker-machine ssh $NODE "ifdata -pa eth1"`
echo IP public: `docker-machine ssh $NODE "ifdata -pa eth0"`
