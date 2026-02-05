module "creaing_public_sub" {
	source="./public"
}
module "creaing_private_sub" {
        source="./private"
	private_vpc_attached=module.creaing_public_sub.vpc_result
	vpc_private_id=module.creaing_public_sub.sg_out
}

