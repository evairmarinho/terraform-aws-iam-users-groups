# Introduction

* This Terraform module create **IAM users** and optionally **IAM groups** dynamically in AWS cloud. 

  **Permissions**

* Crate a policy with content below and attach in EC2 IAM Role or IAM User. These permissions are required to works correctly!

```javascript
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "",
            "Effect": "Allow",
            "Action": [
                "iam:CreateGroup",
                "iam:AddUserToGroup",
                "iam:RemoveUserFromGroup",
                "iam:DeleteGroup",
                "iam:ListGroupsForUser",
                "iam:UpdateGroup",
                "iam:DeleteUser",
                "iam:GetUser",
                "iam:CreateUser",
                "iam:GetGroup"
            ],
            "Resource": "*"
        }
    ]
}
```

## Usage

```text
module "terraform-aws-iam-users-groups" {

  source = "evairmarinho/iam-users-groups/aws"
  version = "= 1.0.4"
  create_groups = false
  users = {
      "user1": {
          name: "evair.marinho"
          groups: ["DevOps"]
          path: "/"
      },
      "user2":{
          name: "joao.sousa"
          groups: ["Billing"]
          path: "/"
      }
  }

}
```

## Examples

* [With creation of new IAM groups](https://github.com/evairmarinho/terraform-aws-iam-users-groups/blob/main/examples/with_new_groups.tf)
* [Without creation of new IAM groups](https://github.com/evairmarinho/terraform-aws-iam-users-groups/blob/main/examples/without_new_groups.tf)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.50, < 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.62.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.groups](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_user.users](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.user_to_groups](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_groups"></a> [create\_groups](#input\_create\_groups) | Define if Terraform will create new\_groups based on variable groups . | `bool` | `false` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | List of group names for Terraform create, case create\_groups variable be true | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for all resources. | `map(string)` | `{}` | no |
| <a name="input_users"></a> [users](#input\_users) | Map for Terraform create users. | `map(any)` | `{}` | no |
<!-- END_TF_DOCS -->

### This Terraform documentation was generated by [terraform-docs](https://github.com/terraform-docs/terraform-docs).

## Getting started

```bash
terraform init

terraform plan

terraform apply
```

