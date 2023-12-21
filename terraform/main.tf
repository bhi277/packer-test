# ------------------------------------------
# Fetch New AMI from AWS
# ------------------------------------------

data "aws_ami" "newami" {
  most_recent = true
  owners      = ["self"]
  
  filter {
    name   = "tag:project"
    values = ["shopping"]
  }

  filter {
    name   = "tag:env"
    values = ["production"]
  }

}

# -------------------------------------------- 
# Fetched AMI id Output
# ---------------------------------------------
output "ami_id" {

 value = data.aws_ami.newami.id

}

# ---------------------------------------------
# Created a new Instce from the Ami
# ---------------------------------------------

resource "aws_instance" "web-new" {

   ami  = data.aws_ami.newami.id
   instance_type = "t2.micro"
   key_name = "k8s_cluster_key"
   vpc_security_group_ids = [ "sg-085d7c6d7d9dad773" ]

   tags = {

    Name = "Prodweb"

}
}   

 output "instance-id" {

  value = aws_instance.web-new.public_ip
}
