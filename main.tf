# Specify the provider and access details
# variable "instances" {
#   description = "Map of modules names to configuration."
#   type        = map
#   default     = {
#     master = {
#       instance_type           = "t2.micro",
#       ami_id             = "ami-09d56f8956ab235b3"
#       instance_name           = "master"
#     },
#     worker1 = {
#       instance_type           = "t2.micro",

#       instance_name           = "worker-1"
#       },
#     worker2 = {
#       instance_type           = "t2.micro",
#       instance_name           = "worker-2"
#       }

#     }
# }

provider "aws" {
  access_key = "xxxxxx"
  secret_key = "xxxxx"
  region = "${var.aws_region}"
}

resource "aws_instance" "master" {
  count         = var.instance_count
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "testnewlinux"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
  subnet_id = var.subnet_ids[count.index]

  tags = {
        Name = "master-${count.index + 1}"
        Project = "cloud"
  }
}

resource "aws_instance" "worker1" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "testnewlinux"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
  subnet_id = "subnet-xxxx"
  tags = {
        Name = "worker-1"
        Project = "cloud"
  }
}

resource "aws_instance" "worker2" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "testnewlinux"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
  subnet_id = "subnet-xxx"

  tags = {
        Name = "worker-2"
        Project = "cloud"
  }
}
