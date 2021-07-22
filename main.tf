provider "aws" {
  region  = "us-east-1"
  profile = "keval"
  default_tags {
    tags = {
      Environment = "Production"
      Owner       = "Ops"
    }
  }

}

#create Vpc
resource "aws_vpc" "Test" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name = "myvpc"
  }
}
