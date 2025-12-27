resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_VIRGINIA"
    env = "dev"
  }
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "VPC_OHIO"
    env = "dev"
  }
  provider = aws.ohio
}

# variable "virginia_cidr" {
#   default = "10.0.0.0/16"
# }

# variable "ohio_cidr" {
#   default = "10.0.0.0/16"
# }