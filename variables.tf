variable "name" {
  type        = string
  description = "This is the name of the hosted zone"
}

variable "comment" {
  type        = string
  description = "A comment for the hosted zone"
  default     = "Managed by Terraform"
}

variable "force_destroy" {
  type        = string
  description = "Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone"
  default     = false
}

variable "tags" {
  description = "Additional tags."
  type        = map(string)
  default     = {}
}

variable "parent_zone_id" {
  description = "Parent R53 hosted zone identifier"
}
