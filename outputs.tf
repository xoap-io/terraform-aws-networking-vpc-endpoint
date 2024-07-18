output "context" {
  value       = var.context
  description = "Exported context from input variable"
}

output "service_name" {
  value       = var.service_name
  description = <<DOC
  (Required) The service name. For AWS services the service name is usually in the form com.amazonaws.<region>.<service>
  (the SageMaker Notebook service is an exception to this rule, the service name is in the form aws.sagemaker.<region>.notebook).
  DOC
}

output "vpc_id" {
  value       = var.vpc_id
  description = "(Required) The ID of the VPC in which the endpoint will be used."
}

output "auto_accept" {
  value       = var.auto_accept
  description = "(Optional) Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account)."
}

output "policy" {
  value       = var.auto_accept
  description = <<DOC
  (Optional) A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access.
  All Gateway and some Interface endpoints support policies - see the relevant AWS documentation for more details.
  For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  DOC
}

output "private_dns_enabled" {
  value       = var.private_dns_enabled
  description = <<DOC
  (Optional; AWS services and AWS Marketplace partner services only) Whether or not to associate a private hosted zone with the specified VPC.
  Applicable for endpoints of type Interface. Defaults to false.
  DOC
}

output "dns_options" {
  value       = var.dns_options
  description = "(Optional) The DNS options for the endpoint. See dns_options below."
}

output "ip_address_type" {
  value       = var.ip_address_type
  description = "(Optional) The IP address type for the endpoint. Valid values are ipv4, dualstack, and ipv6."
}

output "route_table_ids" {
  value       = var.route_table_ids
  description = "(Optional) One or more route table IDs. Applicable for endpoints of type Gateway."
}

output "subnet_ids" {
  value       = var.subnet_ids
  description = <<DOC
  (Optional) The ID of one or more subnets in which to create a network interface for the endpoint.
  Applicable for endpoints of type GatewayLoadBalancer and Interface.
  DOC
}

output "security_group_ids" {
  value       = var.route_table_ids
  description = <<DOC
  (Optional) The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type Interface.
  If no security groups are specified, the VPC's default security group is associated with the endpoint.
  DOC
}

output "tags" {
  value       = var.tags
  description = <<DOC
  (Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present,
  tags with matching keys will overwrite those defined at the provider-level.
  DOC
}

output "vpc_endpoint_type" {
  value       = var.vpc_endpoint_type
  description = "(Optional) The VPC endpoint type, Gateway, GatewayLoadBalancer, or Interface. Defaults to Gateway."
}

output "timeout_create" {
  value       = var.timeout_create
  description = "(Optional) Value for the create timeout. Defaults to 10m."
}

output "timeout_update" {
  value       = var.timeout_update
  description = "(Optional) Value for the update timeout. Defaults to 10m."
}

output "timeout_delete" {
  value       = var.timeout_delete
  description = "(Optional) Value for the delete timeout. Defaults to 10m."
}

output "id" {
  value       = aws_vpc_endpoint.this.id
  description = "The ID of the VPC endpoint."
}

output "arn" {
  value       = aws_vpc_endpoint.this.arn
  description = "The Amazon Resource Name (ARN) of the VPC endpoint."
}

output "cidr_blocks" {
  value       = aws_vpc_endpoint.this.cidr_blocks
  description = "The list of CIDR blocks for the exposed AWS service. Applicable for endpoints of type Gateway."
}

output "dns_entry" {
  value = aws_vpc_endpoint.this.dns_entry[0].dns_name
}

output "network_interface_ids" {
  value       = aws_vpc_endpoint.this.network_interface_ids
  description = "One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type Interface."
}

output "owner_id" {
  value       = aws_vpc_endpoint.this.owner_id
  description = "The ID of the AWS account that owns the VPC endpoint."
}

output "prefix_list_id" {
  value       = aws_vpc_endpoint.this.prefix_list_id
  description = "The prefix list ID of the exposed AWS service. Applicable for endpoints of type Gateway."
}

output "requester_managed" {
  value       = aws_vpc_endpoint.this.requester_managed
  description = "Whether or not the VPC Endpoint is being managed by its service - true or false."
}

output "state" {
  value       = aws_vpc_endpoint.this.state
  description = "The state of the VPC endpoint."
}

output "tags_all" {
  value       = aws_vpc_endpoint.this.tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}
