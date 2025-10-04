resource "aws_route_table_association" "join" {
	subnet_id=aws_subnet.subnet.id
	route_table_id=aws_route_table.rtable.id
}
