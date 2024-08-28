provider "aws" {
  default_tags {
    tags = {
      Environment = "Testing"
      createdBy   = "Chandra"
    }
  }
  region = "us-east-1"
}