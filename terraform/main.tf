
# ------------------------------------------
# Fetch New AMI from AWS
# ------------------------------------------
data "aws_ami" "new_ami" {

  most_recent = true
  filter {
    tags.#.project = shopping
    tags.#.env =  production
  }

}

output "ami_id" {

  value: data.aws_ami.new_ami.id

}


