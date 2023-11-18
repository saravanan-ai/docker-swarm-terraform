output "master_public_ip" {
    value = [for instance in aws_instance.master : instance.public_ip]
}

output "worker1_public_ip" {
    value = ["${aws_instance.worker1.public_ip}"]
}

output "worker2_public_ip" {
    value = ["${aws_instance.worker2.public_ip}"]
}
