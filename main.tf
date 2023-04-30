# Provides an Elastic Container Registry Repository.
resource "aws_ecr_repository" "this" {

  for_each = toset(var.ecr_names)

  name                 = each.key
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = var.encryption_type
  }

}