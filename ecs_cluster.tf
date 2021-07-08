resource "aws_ecs_cluster" "main" {
  name = substr(format("%s-%s-%s", var.name, var.environment, "cluster"), 0, 32)
}
