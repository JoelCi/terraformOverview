variable "environment" {
  type        = string
  description = "(optional) describe your variable"
}

variable "ami" {
  type        = string
  description = "(optional) describe your variable"
  default     = "ami-0a8b4cd432b1c3063"
}
variable "instance_type" {
  type        = string
  description = "(optional) describe your variable"
  default     = "t2.micro"
}
variable "region" {
  type        = string
  description = "(optional) describe your variable"
  default     = "us-east-1"
}

variable "numberOfEC2" {
  type        = number
  description = "(optional) describe your variable"
  default     = 1
}
variable "type" {
  type        = string
  description = "(optional) describe your variable"
}
variable "aws_subnet_id" {
  type        = string
  description = "(optional) describe your variable"
}
