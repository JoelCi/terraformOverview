<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.74.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_myVPC"></a> [myVPC](#module\_myVPC) | github.com/JoelCi/terraformOverview/modules/vpc | n/a |
| <a name="module_privateEC2"></a> [privateEC2](#module\_privateEC2) | github.com/JoelCi/terraformOverview/modules/ec2Instances | n/a |
| <a name="module_publicEC2"></a> [publicEC2](#module\_publicEC2) | github.com/JoelCi/terraformOverview/modules/ec2Instances | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | (optional) describe your variable | `string` | `"ami-0a8b4cd432b1c3063"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | (optional) describe your variable | `string` | `"t2.micro"` | no |
| <a name="input_numberOfPrivateEC2"></a> [numberOfPrivateEC2](#input\_numberOfPrivateEC2) | (optional) describe your variable | `number` | `1` | no |
| <a name="input_numberOfPublicEC2"></a> [numberOfPublicEC2](#input\_numberOfPublicEC2) | (optional) describe your variable | `number` | `1` | no |
| <a name="input_private_subnets_cidr"></a> [private\_subnets\_cidr](#input\_private\_subnets\_cidr) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_public_subnets_cidr"></a> [public\_subnets\_cidr](#input\_public\_subnets\_cidr) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | (optional) describe your variable | `string` | `"us-east-1"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | (optional) describe your variable | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->