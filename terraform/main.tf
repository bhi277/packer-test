
# ------------------------------------------
# Fetch New AMI from AWS
# ------------------------------------------
data "aws_ami" "new_ami" {

  most_recent = true
  owners = ["576000108196"]

  source_ami_filter {
    filters = {
      name   = "source-ami-id"
      values = ["ami-02e94b011299ef128"]  # Replace with the source AMI ID you want to filter by
    }
  }
}

output "ami_id" {

  value: data.aws_ami.new_ami.id

}


