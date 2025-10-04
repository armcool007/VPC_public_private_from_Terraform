resource "aws_security_group" "SG" {
  name="SG-terra"
	vpc_id=aws_vpc.vpc_testing.id
	tags={
		Name="SG"
	}
egress {
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
        from_port=8080
        to_port=8080
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
}
}
#if you want to take only cidr_block="0.0.0.0/0" <--  then you have to take this only
