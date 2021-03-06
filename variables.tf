variable "groups" {
  type        = list(string)
  default     = []
  description = "List of group names for Terraform create, case create_groups variable be true"
}

variable "users" {
  type        = map(any)
  default     = {}
  description = "Map for Terraform create users."

}

variable "create_groups" {
  type        = bool
  default     = false
  description = "Define if Terraform will create new_groups based on variable groups ."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags for all resources."
}