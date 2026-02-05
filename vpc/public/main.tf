resource aws_vpc "mum-vpc" {
        cidr_block=var.vpc_cidr
	enable_dns_hostnames=true
	tags={Name="mum-vpc"}
}

#creaint IGW
resource aws_internet_gateway "igw" {
	vpc_id=aws_vpc.mum-vpc.id
	tags={Name="pulic-igw"}
}

#getting all availability zones
data aws_availability_zones "all" {}

#creating public subnet
resource aws_subnet "pulic_subnet" {
	vpc_id=aws_vpc.mum-vpc.id
	cidr_block=var.subnet1_public
	map_public_ip_on_launch=true
	availability_zone=data.aws_availability_zones.all.names[0]
	tags={Name="pulic-subnet"}
}

#creating routing table
resource aws_route_table "public_RT" {
	vpc_id=aws_vpc.mum-vpc.id
	route {
		cidr_block="0.0.0.0/0"
		gateway_id=aws_internet_gateway.igw.id
	}
	tags={Name="pulic-RT"}
}

#creating routing table association
resource aws_route_table_association "rtassociate" {
	subnet_id=aws_subnet.pulic_subnet.id
	route_table_id=aws_route_table.public_RT.id
}

#creating security group
resource aws_security_group "sg" {
	tags={Name="SG"}
	name="SG"
	vpc_id=aws_vpc.mum-vpc.id
egress {
	to_port=0
	from_port=0
	protocol=-1
	cidr_blocks=["0.0.0.0/0"]
}
ingress {
	to_port=22
        from_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
}
}
