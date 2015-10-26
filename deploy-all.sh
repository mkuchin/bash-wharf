NODE=$1
APP=$2
DEP_FILE=apps/$APP.dep
if [ -e $DEP_FILE ] 
then
  while read NAME
  do
    echo "$Deploying $NAME"
    ./deploy.sh $NODE $NAME
  done < $DEP_FILE
fi

echo "$Deploying $APP"
./deploy.sh $NODE $APP
