resource "aws_instance" "machine" {
	ami=var.amiid
	instance_type=var.type
	key_name=var.pemfile
	subnet_id=aws_subnet.subnet.id
	availability_zone=data.aws_availability_zones.all.names[0]
	vpc_security_group_ids=[aws_security_group.SG.id]
	
	user_data=<<-EOF
		#!/bin/bash
		sudo yum install httpd -y
		sudo systemctl enable --now httpd
		echo "<h1> hi this, is created from Terraform cli </h1>" > /var/www/html/index.html
		EOF
	tags={
		Name="public-machine"
	}
}
