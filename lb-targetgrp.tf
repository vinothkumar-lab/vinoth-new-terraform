resource "aws_lb_target_group" "alb-tg" {
  name     = "${local.name_prefix}-alb-sg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.web_vpc.id
  ###lets add the health check also
  health_check {
    enabled             = true
    protocol            = "HTTP"
    port                = "traffic-port"
    healthy_threshold   = 2
    unhealthy_threshold = 4
    timeout             = 5
    interval            = 30
    matcher             = 200
  }
  tags = {
    Name = "${local.name_prefix}-alb-sg"

  }
}

#behind the target group we need to attach all our instances
resource "aws_lb_target_group_attachment" "web_tg_attachment" {
  for_each         = aws_instance.web_vm
  target_group_arn = aws_lb_target_group.alb-tg.arn
  target_id        = each.value.id
  port             = 80
}