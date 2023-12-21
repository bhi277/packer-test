
# ------------------------------------------
# Fetch New AMI from AWS
# ------------------------------------------

data "aws_ami_ids" "newami" {

  most_recent = true
  owners = ["576000108196"]
 
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }


}



