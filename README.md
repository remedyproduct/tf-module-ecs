# Usage

<!--- BEGIN_TF_DOCS --->
ECS Cluster - Terraform Module

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.46.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.46.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_ecs_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment (development, qa, live, etc.) | `string` | `"development"` | no |
| name | ECS Cluster Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ecs\_cluster | ECS Cluster Resource |

<!--- END_TF_DOCS --->

