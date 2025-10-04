resource "aws_route_table" "privateRoute" {
	vpc_id=aws_vpc.vpc_testing.id
	route {
		cidr_block="0.0.0.0/0"
		nat_gateway_id=aws_nat_gateway.nat.id
	}
	tags={
		Name="route table private"
	}
}
