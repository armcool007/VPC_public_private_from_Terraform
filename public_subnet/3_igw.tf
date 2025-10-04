resource "aws_internet_gateway" "igw" {
	vpc_id=aws_vpc.vpc_testing.id
	tags={
		Name="igw-testing"
	}
}
