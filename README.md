# Primitive tools for building, publishing and deploying of docker containers

### Features
* Creating nodes on DigitalOcean 
* Insecure private docker registry on DigitalOcean private network
* Building images on building node and publishing to private registry
* Deployment of docker image on the node with old containers rotation

### Prerequisites:
* docker and docker-machine installed
* DigitalOcean api token in the 'token' file
* Build node created with

         ./create-node.sh build
* Correct BUILD_NODE name and REGISTRY_HOST in [settings](settings)
* Private registry created with [create-registry.sh](create-registry.sh)
* App name to git repository mapping in the [apps folder](apps) 

### Usage example:
  * Creating node1 and deploying docker-test app on node1
  
         ./create-node.sh node1
         ./deploy.sh node1 docker-test
         ./show-logs.sh node1 docker-test
  * Restarting docker-test container on node1 and examining logs of previous container instance 
         
          ./stop-service.sh node1 docker-test
          ./start-service.sh node1 docker-test
          ./show-logs node1 docker-test.1
  
  
    
    
