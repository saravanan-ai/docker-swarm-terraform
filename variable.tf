variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default = "us-east-1"
}

variable "ami" {
  description = "Amazon Linux AMI"
  default = "ami-09d56f8956ab235b3"
}

variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}

variable "instance_count" {
  description = "Instance count"
  default = 3
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-a93114f6", "subnet-1abd9a3b", "subnet-9d22cad1"]
}
variable "key_path" {
  description = "SSH Public Key path"
  default = "/home/ratul/developments/devops/keyfile/ec2-core-app.pem"
}

variable "key_name" {
  description = "Desired name of Keypair..."
  default = "ec2-core-app"
}

variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default = "install_docker_machine_compose.sh"
}
