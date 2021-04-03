  
module "without_new_groups" {

  source = "evairmarinho/iam-users-groups/aws"
  region = "us-east-1"
  access_key = "<MY_ACCESS_KEY>"
  secret_key = "<MY_SECRET_KEY>"
  create_groups = false
  users = {
      "user1": {
          name: "test_user"
          groups: ["Marketing","SysAdmins"]
          path: "/"
      }
  }

}
