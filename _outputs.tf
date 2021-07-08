output "ecs_cluster" {
  description = "ECS Cluster Resource"
  value       = aws_ecs_cluster.main
}

output "ecs_task_role" {
  description = "Task Execution Role"
  value       = aws_iam_role.task.arn
}
