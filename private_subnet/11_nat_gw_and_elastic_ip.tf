resource "aws_eip" "eip" {
	domain="vpc"
	tags={
		Name="EIP"
	}
}
resource "aws_nat_gateway" "nat" {
	allocation_id=aws_eip.eip.id
	subnet_id=aws_subnet.subnet.id
	tags={
		Name="nat-gatway"
	}
}

#public ip subnet
