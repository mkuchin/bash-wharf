NODE=$1
APP=$2
echo Building
./build.sh $APP
echo Pulling image
./pull-image.sh $NODE $APP
echo Stopping service
./stop-service.sh $NODE $APP
echo Starting service
./start-service.sh $NODE $APP
