provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "lanchonete" {
  name = "lanchonete-cluster"
}

resource "aws_ecs_service" "lanchonete_service" {
  name            = "lanchonete-service"
  cluster         = aws_ecs_cluster.lanchonete.id
  task_definition = var.task_definition_arn
  desired_count   = 1

  network_configuration {
    subnets =[var.subnet_id_1, var.subnet_id_2]
    security_groups = [var.security_groups_id]
  }
}