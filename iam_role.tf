resource "aws_iam_role" "task" {
  name = format("%s-%s-%s", var.name, var.environment, "exec-role")

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

data "aws_iam_policy" "cloudwatch" {
  arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
}

data "aws_iam_policy" "task_execution" {
  arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

resource "aws_iam_role_policy_attachment" "execution_role_cloudwatch" {
  role       = aws_iam_role.execution_role.name
  policy_arn = data.aws_iam_policy.cloudwatch.arn
}

resource "aws_iam_role_policy_attachment" "execution_role_task_execution" {
  role       = aws_iam_role.execution_role.name
  policy_arn = data.aws_iam_policy.task_execution.arn
}
