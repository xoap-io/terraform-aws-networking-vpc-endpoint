resource "aws_vpc_endpoint" "this" {
    service_name        = var.service_name
    vpc_id              = var.vpc_id
    auto_accept         = var.auto_accept
    policy              = var.policy
    private_dns_enabled = var.private_dns_enabled
    dns_options {
        dns_record_ip_type = var.dns_record_ip_type
    }
    ip_address_type     = var.ip_address_type
    route_table_ids     = var.route_table_ids
    subnet_ids          = var.subnet_ids
    security_group_ids  = var.security_group_ids
    tags                = var.tags
    vpc_endpoint_type   = var.vpc_endpoint_type
    timeouts {
        create = var.timeout_create
        update = var.timeout_update
        delete = var.timeout_delete
    }
}
