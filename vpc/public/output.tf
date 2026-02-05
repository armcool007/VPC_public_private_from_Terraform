output "vpc_result" {
	value=aws_vpc.mum-vpc.id	
}

output "public_subnet" {
	value=aws_subnet.pulic_subnet.id
}

output "sg_out" {
	value=aws_security_group.sg.id
}
