resource "aws_iam_group" "groups" {
  for_each = var.create_groups ? toset(var.groups) : toset([])
  name     = each.value
  path     = "/"
}

resource "aws_iam_user" "users" {
  for_each = try(var.users, [])
  name     = each.value.name
  path     = try(each.value.path, "/")
  tags     = var.tags
}




resource "aws_iam_user_group_membership" "user_to_groups" {
  for_each   = try(var.users, [])
  user       = each.value.name
  groups     = each.value.groups
  depends_on = [aws_iam_user.users, aws_iam_group.groups]
}
