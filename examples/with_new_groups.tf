module "with_new_groups" {

  source = "evairmarinho/iam-users-groups/aws"
  region = "us-east-1"
  groups        = ["developers"]
  create_groups = true
  users = {
      "user1": {
          name: "test_user"
          groups: ["ADM", "developers"]
          path: "/"
      }
  }

}
