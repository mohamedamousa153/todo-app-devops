ECR_REGION=us-east-1
ECR_ACCOUNT_ID=730335448540
SECRET_NAME=ecr-secret

# Retrieve ECR authentication token
TOKEN=$(aws ecr get-login-password --region $ECR_REGION)

# Create Kubernetes secret
kubectl create secret  docker-registry $SECRET_NAME \
  --docker-server=$ECR_ACCOUNT_ID.dkr.ecr.$ECR_REGION.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$TOKEN
