resource "aws_route_table_association" "privateJoin" {
	subnet_id=aws_subnet.private.id
	route_table_id=aws_route_table.privateRoute.id
}
