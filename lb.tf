resource "aws_lb" "web_lb" {
  name     = "${local.name_prefix}-alb"
  internal           = false #this will create external lb
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [for subnet in aws_subnet.web_subnet : subnet.id]


   tags = {
    Name = "${local.name_prefix}-alb"

  }
}

output "alb_dns" {
    #this will give me the lb dns name using the same i can access all my instance
  value = aws_lb.web_lb.dns_name
}

#Listeners and routing this will get the traffic in lb and send to target group
resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.web_lb.arn 
  port              = "80"
  protocol          = "HTTP"
  

  default_action { #listener will send the traffic to 
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb-tg.arn
  }
}