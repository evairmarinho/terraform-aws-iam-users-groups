
module "without_new_groups" {

  source        = "evairmarinho/iam-users-groups/aws"
  version       = "= 1.0.4"
  create_groups = false
  users = {
    "user1" : {
      name : "test_user"
      groups : ["Marketing", "SysAdmins"]
      path : "/"
    }
  }

}
