// format all terraform files using `terraform fmt` in the parent directory

// configures options that apply to all resources managed by your provider
provider "aws" {
  region = "us-east-1"
}

// query your cloud provider for information about other resources. This data source fetches data about the latest AWS AMI that matches the filter, so you do not have to hardcode the AMI ID into your configuration.
//In this example, the data.aws_ami.ubuntu data source loads an AMI for the most recent Ubuntu Noble Numbat release in the region configured for your provider
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

// defines components of your infrastructure. declares resource type and resource name.
resource "aws_instance" "app_server" {
  // references our dataID from earlier
  ami = data.aws_ami.ubuntu.id
  // aws free tier
  instance_type = "t3.micro" // tutorial used t2.micro which is no longer in free tier on aws

  // EC2 instance tag arguments
  tags = {
    Name = "learn-terraform"
  }
}

