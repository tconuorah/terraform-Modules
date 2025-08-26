
# main.tf

# Specify the provider (AWS)
provider "aws" {
  region = "us-east-2"  # Replace with your desired region
}

# Create an EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux AMI
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Example-Instance"
  }
}


# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-20250814-terrence-9384f7a2"
  acl    = "private"

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}
