resource "aws_security_group" "task1" {
    name = "task"
    description = "allow SSH, HTTP and HTTPS traffic"

    ingress {
     description = "SSH"
     to_port = 22
     from_port = 22
     protocol ="tcp"
     cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
     description = "HTTP"
     to_port = 80
     from_port = 80
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
  } 
     ingress {
      description = "HTTPS"
      to_port = 443
      from_port = 443
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
   }
     ingress {
      description = "MySQL"
      to_port = 3306
      from_port = 3306
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
}
      egress {
       description = "allow all tarffic rules"
       to_port = 0
       from_port = 0
       protocol = "-1"
       cidr_blocks = ["0.0.0.0/0"]
    }
       tags = {
         name = "task"
     }
}
