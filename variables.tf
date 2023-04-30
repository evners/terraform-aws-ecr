variable "region" {
  description = "The AWS default region where you want to create resources."
  type        = string
  default     = "eu-west-1"
}

variable "ecr_names" {
  description = "The list of ecr names to create."
  type        = list(string)
  default     = null
}

variable "image_tag_mutability" {
  description = "Provide image mutability"
  type        = string
  default     = "MUTABLE"
}

variable "encryption_type" {
  description = "Provide type of encryption"
  type        = string
  default     = "KMS"
}