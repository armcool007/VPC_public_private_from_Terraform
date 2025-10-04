resource "aws_security_group" "privateSG" {
	name="terra-SG"
	vpc_id=aws_vpc.vpc_testing.id
	tags={
		Name="SG-private"
	}
egress{
        from_port=0
        to_port=0
        protocol="-1"
        cidr_blocks=["0.0.0.0/0"]
}
ingress {
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
}
ingress {
        from_port=3306
        to_port=3306
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
}
}

