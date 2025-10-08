resource "aws_ecr_repository" "app" {
  name = var.repo_name
}

output "repo_url" {
  value = aws_ecr_repository.app.repository_url
}
