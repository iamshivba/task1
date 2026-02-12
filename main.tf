data "aws_ami" "linux_ami" {
   most_recent = true
   owners =["amazon"]
  
   filter{
     name = "name"
     values = ["al2023-ami-*-x86_64"]
   }

   filter{
    name = "virtualization-type"
    values = ["hvm"]
   }
}

data "aws_key_pair" "my_key" {
     key_name = "shiv_key"
     include_public_key = true
}

resource "aws_instance" "ec2_instance" {
     ami = data.aws_ami.linux_ami.id
     instance_type = "t3.micro"
     key_name = date.aws_key_pair.my_key.key_name
     vpc_security_group_ids = [aws_security_group.task.id]
     associate_public_ip = true

     tags = { 
       name = "web-server"
     }
} 

resource "aws_instance" "ec2_instance1" {
      ami = data.aws_ami.linux_ami.id
      instance_type = "t3.micro"
      key_name = date.aws_key_pair.my_key.key_name
      vpc_security_group_ids = [aws_security_group.task.id]
      associate_public_ip = true

      tags = {
        name = "db-server"
    }
}

