provider "aws" {

region = "us-east-1"

access_key = "AKIAUEYXB5WWJPRTRXCH"

secret_key = "Ak9MdZIbTnGfE0eBb6cSC6mSleBc05x8IZUAppZG"

}
 
resource "aws_instance" "ec2_example" {

    ami = "ami-0230bd60aa48260c6"

    instance_type = "t2.micro"

    key_name= "aws_key"

}
 
resource "aws_security_group" "main" {

  egress = [

    {

      cidr_blocks      = [ "0.0.0.0/0", ]

      description      = ""

      from_port        = 0

      ipv6_cidr_blocks = []

      prefix_list_ids  = []

      protocol         = "-1"

      security_groups  = []

      self             = false

      to_port          = 0

    }

  ]

ingress                = [

   {

     cidr_blocks      = [ "0.0.0.0/0", ]

     description      = ""

     from_port        = 22

     ipv6_cidr_blocks = []

     prefix_list_ids  = []

     protocol         = "tcp"

     security_groups  = []

     self             = false

     to_port          = 22

  }

  ]