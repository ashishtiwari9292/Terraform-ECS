
# variables.tf
# variable "AWS_ACCESS_KEY_ID" {
#   description = "AWS access key"
#   default     = "{{ secrets.AWS_ACCESS_KEY_ID }}"
# }

# variable "AWS_SECRET_ACCESS_KEY" {
#   description = "AWS secret key"
#   default     = "{{ secrets.AWS_SECRET_ACCESS_KEY }}"
# }
variable "input" {}

locals {
  common_dev = {
    Name = "dev_deparment"
  }
}

locals {
  common_prod = {
    Name = "prod_deparment"
  }
}

variable "aws_region" {
  description = "The AWS region things are created in"
  # default     = "us-east-1"
}

variable "aws_ami" {
  description = "The AWS AMI things are created in"
  # default     = "ami-0261755bbcb8c4a84"
}

variable "aws_instance_type" {
  description = "The AWS Instance Type things are created in"
  # default     = "t2.micro"
  type = list(any)
}

variable "aws_instance_name" {
  description = "The AWS Instance Name things are created in"
  # default     = "t2.micro"
  type = list(any)
}

variable "aws_subnet_id" {
  description = "The AWS Subnet Id things are created in"
  # default     = "subnet-0b37419505d92509d"
}

variable "az" {
  description = "The AWS AZ things are created in"
  type        = list(any)
  # default     = ""
}

variable "elbname" {
  description = "The AWS elb things are created in"
  type        = string
  # default     = ""
}

variable "tag" {
  description = "The AWS tag things are created in"
  type        = list(any)
  # default     = ""
}

# variable "az_count" {
#   default     = "2"
#   description = "number of availability zones in above region"
# }

# variable "ecs_task_execution_role" {
#   default     = "myECcsTaskExecutionRole"
#   description = "ECS task execution role name"
# }

# variable "app_image" {
#   default     = "153662675993.dkr.ecr.us-east-1.amazonaws.com/terraform-ecr:latest"
#   description = "docker image to run in this ECS cluster"
# }

# variable "app_port" {
#   default     = "80"
#   description = "portexposed on the docker image"
# }

# variable "app_count" {
#   default     = "1" #choose 2 bcz i have choosen 2 AZ
#   description = "numer of docker containers to run"
# }

# variable "health_check_path" {
#   default = "/"
# }

# variable "fargate_cpu" {
#   default     = "1024"
#   description = "fargate instacne CPU units to provision,my requirent 1 vcpu so gave 1024"
# }

# variable "fargate_memory" {
#   default     = "2048"
#   description = "Fargate instance memory to provision (in MiB) not MB"
# }
