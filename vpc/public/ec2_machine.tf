resource "aws_instance" "machine" {
	ami=var.amiid
	instance_type=var.type
	key_name=var.pemfile
	subnet_id=aws_subnet.pulic_subnet.id
	availability_zone=data.aws_availability_zones.all.names[0]
	vpc_security_group_ids=[aws_security_group.sg.id]
	tags={Name="public-machine"}
}
