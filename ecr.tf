# resource "aws_ecr_repository" "demo-ecr" {
#   name                 = "terraform-ecr"
#   image_tag_mutability = "MUTABLE"

#   image_scanning_configuration {
#     scan_on_push = true
#   }
# }

# resource "aws_ecr_repository_policy" "demo-ecr-policy" {
#   repository = aws_ecr_repository.demo-ecr.name
#   policy     = <<EOF
#   {
#     "Version": "2008-10-17",
#     "Statement": [
#       {
#         "Sid": "adds full ecr access to the demo ecr",
#         "Effect": "Allow",
#         "Principal": "*",
#         "Action": [
#           "ecr:BatchCheckLayerAvailability",
#           "ecr:BatchGetImage",
#           "ecr:CompleteLayerUpload",
#           "ecr:GetDownloadUrlForLayer",
#           "ecr:GetLifecyclePolicy",
#           "ecr:InitiateLayerUpload",
#           "ecr:PutImage",
#           "ecr:UploadLayerPart",
#           "ecr:PutImage",
#           "ecr:DescribeRepositories",
#           "ecr:GetRepositoryPolicy",
#           "ecr:ListImages",
#           "ecr:DeleteRepository",
#           "ecr:BatchDeleteImage",
#           "ecr:SetRepositoryPolicy",
#           "ecr:DeleteRepositoryPolicy",
#         ]
#       }
#     ]
#   }
#   EOF
# }