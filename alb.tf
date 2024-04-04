# #in this template we are creating aws application laadbalancer and target group and alb http listener

# resource "aws_alb" "alb" {
#   name           = "myapp-load-balancer"
#   subnets        = aws_subnet.public.*.id
#   security_groups = [aws_security_group.alb-sg.id]
# }

# resource "aws_alb_target_group" "myapp-tg" {
#   name        = "myapp-tg"
#   port        = 80
#   protocol    = "HTTP"
#   target_type = "ip"
#   vpc_id      = aws_vpc.test-vpc.id

#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     protocol            = "HTTP"
#     matcher             = "200"
#     path                = var.health_check_path
#     interval            = 30
#   }
# }

# #redirecting all incomming traffic from ALB to the target group
# resource "aws_alb_listener" "testapp" {
#   load_balancer_arn = aws_alb.alb.id
#   port              = var.app_port
#   protocol          = "HTTP"
#   #ssl_policy        = "ELBSecurityPolicy-2016-08"
#   #certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"
#   #enable above 2 if you are using HTTPS listner and change protocal from HTTPS to HTTPS
#   default_action {
#     type             = "forward"
#     target_group_arn = aws_alb_target_group.myapp-tg.arn
#   }
# }

# resource "aws_elb" "bar" {
#   name               = var.elbname
#   availability_zones = var.az

#   listener {
#     instance_port     = 8000
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#   }

#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     target              = "HTTP:8000/"
#     interval            = 30
#   }

#   cross_zone_load_balancing   = true
#   idle_timeout                = 400
#   connection_draining         = true
#   connection_draining_timeout = 400

#   tags = {
#     Name = "foobar-terraform-elb"
#   }
# }
