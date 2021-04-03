  
module "without_new_groups" {

  source = "evairmarinho/iam-users-groups/aws"
  region = "us-east-1"
  create_groups = false
  users = {
      "user1": {
          name: "test_user"
          groups: ["Marketing","SysAdmins"]
          path: "/"
      }
  }

}
