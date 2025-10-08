# Sample Node.js + MongoDB on AWS ECS (Terraform)

## Prerequisites
- AWS CLI configured
- Terraform installed
- Docker installed

## 1. Build and Push Docker Image to ECR

```
# Set variables
export AWS_REGION=<your-region>
export ECR_REPO_NAME=<your-ecr-repo>

# Authenticate Docker to ECR
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin <your-account-id>.dkr.ecr.$AWS_REGION.amazonaws.com

# Build Docker image
cd app
npm install
docker build -t $ECR_REPO_NAME .

# Tag and push
docker tag $ECR_REPO_NAME:latest <your-account-id>.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:latest
docker push <your-account-id>.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:latest
```

## 2. Terraform Deployment Steps

```
cd terraform
terraform init
terraform plan -var-file="values.tfvars"
terraform apply -var-file="values.tfvars"
```

- Ensure `backend.tf` is configured with your S3 bucket and DynamoDB table.
- Fill in `values.tfvars` with your values (region, VPC name, ECR repo, MongoDB URI, etc).

## 3. Access the Application
- After deployment, find the ALB DNS name in Terraform outputs:
  - `alb_dns_name = <ALB DNS>`
- Open in browser: `http://<ALB DNS>`

## 4. ECS EC2 vs. Fargate Comparison
See [docs/ECS-EC2-vs-Fargate.md](docs/ECS-EC2-vs-Fargate.md)

## 5. Outputs
- ALB DNS name
- ECS cluster name
- ECS service name
