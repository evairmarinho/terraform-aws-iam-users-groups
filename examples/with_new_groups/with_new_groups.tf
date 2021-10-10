module "with_new_groups" {

  source        = "evairmarinho/iam-users-groups/aws"
  version       = "= 1.0.4"
  groups        = ["developers"]
  create_groups = true
  users = {
    "user1" : {
      name : "test_user"
      groups : ["ADM", "developers"]
      path : "/"
    }
  }

}