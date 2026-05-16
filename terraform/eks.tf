resource "aws_eks_cluster" "main" {
  name     = "devops-eks"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.public1.id,
      aws_subnet.public2.id
    ]

    security_group_ids = [
      aws_security_group.eks_sg.id
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_policy
  ]
}

resource "aws_eks_node_group" "worker_nodes" {
  cluster_name    = aws_eks_cluster.main.name
  node_group_name = "worker-nodes"
  node_role_arn   = aws_iam_role.nodes.arn

  subnet_ids = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 1
  }

  instance_types = ["t3.medium"]

  depends_on = [
    aws_iam_role_policy_attachment.worker_node_policy,
    aws_iam_role_policy_attachment.cni_policy,
    aws_iam_role_policy_attachment.registry_policy
  ]
}