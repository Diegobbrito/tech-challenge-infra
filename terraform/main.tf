provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "lanchonete" {
  name = "lanchonete-cluester"
}

resource "aws_ecs_service" "lanchonete_service" {
  name            = "lanchonete-service"
  cluster         = aws_ecs_cluster.lanchonete.id
  task_definition = var.task_definition_arn
  desired_count   = 1

  network_configuration {
    subnets =["172.30.0.0/24", "172.30.1.0/24"]
    security_groups = ["sg-0285e7f7bbd8335e1"]
  }
}