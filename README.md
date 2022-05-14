# Usage

<!--- BEGIN_TF_DOCS --->
ECS Cluster - Terraform Module

## Requirements

| Name | Version |
|------|---------|
| aws | >=4 |

## Providers

| Name | Version |
|------|---------|
| aws | >=4 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_ecs_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) |
| [aws_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) |
| [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment (development, qa, live, etc.) | `string` | `"development"` | no |
| name | ECS Cluster Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ecs\_cluster | ECS Cluster Resource |
| ecs\_task\_role | Task Execution Role |

<!--- END_TF_DOCS --->

