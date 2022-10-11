terraform {
	cloud {
		organization = "plateer_idt_aa"
		workspaces{
			name = "terraform_temp"
		}
	}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-068a0feb96796b48d"
  instance_type = "t2.medium"

  tags = {
    Name = "ExampleAppServerInstance-github3"
  }
}
