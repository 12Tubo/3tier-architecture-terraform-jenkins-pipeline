#getting the DNS of load balancer
output "lb_dns_name" {
  Description = "The DNS name of the load balancer"
  Value = aws_lb.external-alb.dns_name
}