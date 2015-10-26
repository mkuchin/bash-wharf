. settings
. runon.sh $BUILD_NODE
APP=$1
APP_NAME=$REGISTRY_HOST/$APP
GIT_REPO=$(cat "apps/$APP")
docker build -t $APP_NAME $GIT_REPO || exit $?;
docker push $APP_NAME

