output "vpc_id" {
  value = aws_vpc.main.id
}

output "eks_cluster_name" {
  value = aws_eks_cluster.main.name
}

output "ecr_repo_url" {
  value = aws_ecr_repository.app_repo.repository_url
}