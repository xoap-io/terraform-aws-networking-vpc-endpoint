variable "context" {
  type = object({
    organization = string
    environment  = string
    account      = string
    product      = string
    tags         = map(string)
  })
  description = "Default context for naming and tagging purpose"
}

variable "service_name" {
  type = string
  description = <<DOC
  (Required) The service name. For AWS services the service name is usually in the form com.amazonaws.<region>.<service>
  (the SageMaker Notebook service is an exception to this rule, the service name is in the form aws.sagemaker.<region>.notebook).
  DOC
}

variable "vpc_id" {
  type = string
  description = "(Required) The ID of the VPC in which the endpoint will be used."
}

variable "auto_accept" {
  type = bool
  description = "(Optional) Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account)."
}

variable "policy" {
  type = string
  description = <<DOC
  (Optional) A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access.
  All Gateway and some Interface endpoints support policies - see the relevant AWS documentation for more details.
  For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  DOC
}

variable "private_dns_enabled" {
  type = bool
  description = <<DOC
  (Optional; AWS services and AWS Marketplace partner services only) Whether or not to associate a private hosted zone with the specified VPC.
  Applicable for endpoints of type Interface. Defaults to false.
  DOC
  default = false
}

variable "dns_record_ip_type" {
  type = string
  description = "(Optional) The DNS records created for the endpoint. Valid values are ipv4, dualstack, service-defined, and ipv6."
}

variable "ip_address_type" {
  type = string
  description = "(Optional) The IP address type for the endpoint. Valid values are ipv4, dualstack, and ipv6."
}

variable "route_table_ids" {
  type = list(string)
  description = "(Optional) One or more route table IDs. Applicable for endpoints of type Gateway."
}

variable "subnet_ids" {
  type = list(string)
  description = <<DOC
  (Optional) The ID of one or more subnets in which to create a network interface for the endpoint.
  Applicable for endpoints of type GatewayLoadBalancer and Interface.
  DOC
}

variable "security_group_ids" {
  type = list(string)
  description = <<DOC
  (Optional) The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type Interface.
  If no security groups are specified, the VPC's default security group is associated with the endpoint.
  DOC
}

variable "tags" {
  type = map(string)
  description = <<DOC
  (Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present,
  tags with matching keys will overwrite those defined at the provider-level.
  DOC
}

variable "vpc_endpoint_type" {
  type = string
  description = "(Optional) The VPC endpoint type, Gateway, GatewayLoadBalancer, or Interface. Defaults to Gateway."
}

variable "timeout_create" {
  type = string
  description = "(Optional) Value for the create timeout. Defaults to 10m."
  default = "10m"
}

variable "timeout_update" {
  type = string
  description = "(Optional) Value for the update timeout. Defaults to 10m."
  default = "10m"
}

variable "timeout_delete" {
  type = string
  description = "(Optional) Value for the delete timeout. Defaults to 10m."
  default = "10m"
}
