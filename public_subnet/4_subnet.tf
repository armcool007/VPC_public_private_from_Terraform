resource "aws_subnet" "subnet" {
	vpc_id=aws_vpc.vpc_testing.id
	availability_zone=data.aws_availability_zones.all.names[0]
  cidr_block=var.subnet1_public
  map_public_ip_on_launch=true
  tags={
      Name="public subnet"
    }
}
