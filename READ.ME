export AWS_PROFILE=MYPROFILE
AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
AWS_REGION=$(aws configure get region)

docker build -t lono_centos .
docker run -it --rm \
   --name lono_work \
   -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" \
   -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" \
   -e "AWS_REGION=$AWS_REGION" \
   -v /path/to/scripts:/scripts
   lono_centos