NODE=$1
APP=$2
./build.sh $APP
./pull-image.sh $NODE $APP
./stop-service.sh $NODE $APP
./start-service.sh $NODE $APP
