. settings
. runon.sh $BUILD_NODE
APP=$1
APP_NAME=REGISTRY_HOST/$1
docker build -t $APP_NAME $(cat "apps/$APP")
docker push $APP_NAME

