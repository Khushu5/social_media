docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID khushu05/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID khushu05/$JOB_NAME:latest

docker push khushu05/$JOB_NAME:$BUILD_ID

docker push khushu05/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID khushu05/$JOB_NAME:$BUILD_ID khushu05/$JOB_NAME:latest
