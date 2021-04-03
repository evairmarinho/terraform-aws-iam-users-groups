variable "region" {
  type        = string
  description = "Region where the resources will be created."
}

variable "groups" {
  type        = list(string)
  default     = []
  description = "List of group names for Terraform create, case create_groups variable be true"
}

variable "users" {
  type = map(any)
  default = {
    "user1" : {
      name : "test"
      groups : ["ADM", "developers"]
      path : "/"
    }
  }
  description = "Map for Terraform create users."

}

variable "create_groups" {
  type        = bool
  default     = true
  description = "Define if Terraform will create new_groups based on variable groups."
}

variable "access_key" {
  type        = string
  description = "AWS Access Key"
}
variable "secret_key" {
  type        = string
  description = "AWS Secret Access Key"
}
