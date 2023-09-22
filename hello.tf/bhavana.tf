provider "aws" {
  region = "ap-southeast-1" # Singapore region
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-XXXXXX" 
  instance_type = "t2.micro"

  tags = {
    Name = "SUSE-Instance"
  }
}

# Output the auto-assigned public IP address
output "public_ip" {
  value = aws_instance.example.public_ip
}