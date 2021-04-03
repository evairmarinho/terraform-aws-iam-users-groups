module "with_new_groups" {

  source = "../../.."
  region = "us-east-1"
  access_key = "<MY_ACCESS_KEY>"
  secret_key = "<MY_SECRET_KEY>"
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
