provider "aws" {
  region                  = "ap-south-1"
  profile                 = "default"
  version                 = "1.31"
  shared_credentials_file = "~/.aws/credentials"
}

provider "template" {
  version = "1.0.0"
}

terraform {
  required_version = ">= 0.11.7"

  backend "s3" {
    bucket                  = "my-kb-bucket-demo-test"
    key                     = "test/backbone"
    region                  = "ap-south-1"
    encrypt                 = "true"
    shared_credentials_file = "~/.aws/credentials"
  }
}
