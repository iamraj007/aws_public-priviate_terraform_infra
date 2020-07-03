#Output value of componenet just created
output "MyVPCid" {
        value = "${aws_vpc.MyVPC.id}"
}

output "MyVPC-cidr-block" {
        value = "${aws_vpc.MyVPC.cidr_block}"
}

output "BastionInstance_IP" {
  value = ["${aws_instance.Public-bastion-instance.public_ip}"]
}

output "BastionInstance_Key" {
  value = ["${aws_instance.Public-bastion-instance.key_name}"]
}

output "Private-Instance-1-IP" {
  value = ["${aws_instance.Private-instance1.private_ip}"]
}

output "Private-Instance-2-IP" {
  value = ["${aws_instance.Private-instance2.private_ip}"]
}


