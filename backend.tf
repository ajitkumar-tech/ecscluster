terraform {
  backend "s3" {
    bucket = "ecs-cluster-demo"
    key    = "statefile/terraform.tfstate" 
    region = "ap-south-1"
  }
}
