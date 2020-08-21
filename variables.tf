variable "name" {
  type        = string
  description = "Name of S3 state store, this will be prepended by 'terraform-state-'"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the Shared Terraform State Store resources."
}
