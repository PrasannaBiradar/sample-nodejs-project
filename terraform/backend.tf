terraform {
  backend "s3" {
    bucket         = "<YOUR_S3_BUCKET>"
    key            = "terraform/state/sample-node-mongo-ecs.tfstate"
    region         = "<YOUR_AWS_REGION>"
    dynamodb_table = "<YOUR_DYNAMODB_TABLE>"
    encrypt        = true
  }
}
