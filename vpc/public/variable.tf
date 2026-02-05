variable "amiid" {
	default="ami-0f9708d1cd2cfee41"
}
variable "type" {
	default="t3.micro"
}
variable "pemfile" {
	default="k003"
}
variable "vpc_cidr" {
	default="10.0.0.0/16"
}
variable "subnet1_public" {
	default="10.0.1.0/24"
}
variable "subnet2_private" {
	default="10.0.2.0/24"
}
