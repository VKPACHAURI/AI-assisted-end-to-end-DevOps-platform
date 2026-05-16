resource "aws_ecr_repository" "app_repo" {
  name = "ai-devops-app"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ai-devops-ecr"
  }
}