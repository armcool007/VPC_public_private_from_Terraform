resource "aws_subnet" "private" {
	vpc_id=aws_vpc.vpc_testing.id
	cidr_block=var.subnet2_private
	availability_zone=data.aws_availability_zones.all.names[1]
	tags={
		Name="private subnet"
	}
}
