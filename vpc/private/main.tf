#getting all availability zones
data aws_availability_zones "all" {}

#creating private subnet
resource aws_subnet "private_subnet" {
	vpc_id=var.private_vpc_attached
	cidr_block=var.subnet2_private
	availability_zone=data.aws_availability_zones.all.names[1]
	tags={Name="private-subnet"}
}

#creating routing table
resource aws_route_table "private_RT" {
	vpc_id=var.private_vpc_attached
#	route {
#		cidr_block="0.0.0.0/0"
#		nat_gateway
#	}
	tags={Name="private-RT"}
}

#creating routing table association
resource aws_route_table_association "rtassociate" {
	subnet_id=aws_subnet.private_subnet.id
	route_table_id=aws_route_table.private_RT.id
}

