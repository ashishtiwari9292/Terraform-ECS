resource "aws_instance" "dev-team" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type[count.index]
  count         = var.input == "dev" ? 1 : 0
  tags          = local.common_dev
}
#   tags = {
#     Name = "dev-department"
#     # Name = var.tag[count.index]
#   }
# }
resource "aws_instance" "prod-team" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type[count.index]
  count         = var.input == "prod" ? 3 : 0
  tags          = local.common_prod
  #   tags = {
  #     Name = "prod-department"
  #     # Name = var.tag[count.index]
  #   }
}


# resource "aws_instance" "prod-team" {
#   ami           = var.aws_ami
#   instance_type = var.aws_instance_type[1]
#   tags = {
#     Name = var.tag[1]
#   }
# }

# resource "aws_instance" "client-team" {
#   ami           = var.aws_ami
#   instance_type = var.aws_instance_type[2]
#   tags = {
#     Name = var.tag[2]
#   }
# }