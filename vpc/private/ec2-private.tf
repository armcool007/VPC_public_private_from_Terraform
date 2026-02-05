resource "aws_instance" "machine" {
        ami=var.amiid
        instance_type=var.type
        key_name=var.pemfile
        subnet_id=aws_subnet.private_subnet.id
        availability_zone=data.aws_availability_zones.all.names[1]
        vpc_security_group_ids=[var.vpc_private_id]
        tags={Name="private-machine"}
}

