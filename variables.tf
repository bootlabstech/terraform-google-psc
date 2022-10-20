variable "address" {
  type        = string
  description = "the ip of the resource"
}
variable "address_type" {
  type        = string
  description = "the address type of the resource"
}
variable "address_name" {
  type        = string
  description = "the name of the resource"
}
variable "network" {
  type        = string
  description = "the network within which the resource will be created"
}
variable "subnet_mask" {
  type        = number
  description = "the subnet mask for the CIDR of the resource"
}
variable "purpose" {
  type        = string
  description = "the purpose of this resource within the network."
}
variable "project_id" {
  type        = string
  description = "the project_id of the resource."
}

variable "ranges" {
  type = list(string)
  description = "(optional) describe your variable"
}