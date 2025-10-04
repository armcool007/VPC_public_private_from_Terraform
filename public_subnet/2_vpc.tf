resource "aws_vpc" "vpc_testing" {
	cidr_block=var.vpc_cidr
  enable_dns_hostnames=true
	tags={
		Name="vpc-testing"
	}
}
	
