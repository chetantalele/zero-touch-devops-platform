terraform {
  backend "s3" {
    bucket         = "zero-touch-devops-terraform-state"
    key            = "terraform.tfstate"
    region         = "ap-south-1"

    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
