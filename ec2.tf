resource "aws_instance" "myec2" {
ami = data.aws_ami.web_ami.id
instance_type = "t2.large"
}

data "aws_ami" "web_ami" {
 most_recent = true
 owners = ["amazon"]

 filter {
   name = "name"
   values = ["amzn2-ami-hvm*"]

 }
}