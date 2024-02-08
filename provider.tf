terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "vscode"

}


#Create a VPC Resource block

resource "aws_vpc" "myVpc" {
  cidr_block = "10.0.0.0/16"
}
vpc.id = aws_vpc.myVpc


provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::123456789012:role/ROLE_NAME"
    session_name = "SESSION_NAME"
    external_id  = "EXTERNAL_ID"
  }
}
