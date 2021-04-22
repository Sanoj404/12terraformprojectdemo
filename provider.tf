provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-up-and-running-state"
    key            = "Terraform"
    region         = "us-east-1"
