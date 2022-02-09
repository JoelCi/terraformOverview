variable "environment" {
  type        = string
  description = "(optional) describe your variable"
}
variable "vpc_cidr" {
  type        = string
  description = "(optional) describe your variable"
}
variable "private_subnets_cidr" {
  type        = string
  description = "(optional) describe your variable"
}
variable "public_subnets_cidr" {
  type        = string
  description = "(optional) describe your variable"
}

variable "region" {
  type        = string
  description = "(optional) describe your variable"
  default     = "us-east-1"
}

