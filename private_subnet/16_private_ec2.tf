resource "aws_instance" "run" {
	ami=var.amiid
	instance_type=var.type
	key_name=var.pemfile
	availability_zone=data.aws_availability_zones.all.names[1]
	subnet_id=aws_subnet.private.id
	vpc_security_group_ids=[aws_security_group.privateSG.id]
  tags={
      Name="Private-machine"
  }
}
