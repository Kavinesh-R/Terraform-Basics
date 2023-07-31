provider "aws" {
  #AWS Region
  region = "us-east-1"    #here us-east-1 refers to North Virginia
  
}

resource "aws_instance" "example" {
  ami = "ami-053b0d53c279acc90"  #Amazon Machine Image ID.Use your AMI id that can be identified in your EC2 console
  instance_type = "t2.micro"  # Instance type which defines the Hardware configs of your instance
  key_name = "MyKeyPair"  # Keypair which acts as a key to enter into your instance

  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "Ubuntu Instance" # It is an optional one. It will assign a name for our Instance (Just for Indentification purpose)
  }
}



  resource "aws_security_group" "allow_ssh" {   #creating a security group which allows SSH protocol (Inbound Rule)
    ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"   #TCP port for SSH
      cidr_blocks = ["0.0.0.0/0"]   #by declaring the cidr block as ["0.0.0.0/0"] any ip can access our instance. we can choose MyIP or custom IP
  }
}
