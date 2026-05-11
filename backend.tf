terraform {
  backend "s3" {
    bucket = "ec-cluster-demo"
    key    = "statefile/terraform.tfstate" 
    region = "us-east-1"
  }
}
