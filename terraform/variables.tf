variable "region" {
  default = "us-east-1"
}

variable "ecs_cluster_name" {
  description = "Nome do cluster ECS"
  default = "lanchonete"
}

variable "ecs_task_name" {
  description = "Nome da tarefa ECS"
  default = "lanchonete"
}

variable "ecr_image_name" {
  description = "Nome da imagem no ECR"
  default = "lanchonete"
}

variable "ecr_repository_url" {
  description = "URL do repositório ECR"
}

variable "task_definition_arn" {
  description = "ARN da definição de tarefa existente"
}

variable "desired_task_count" {
  description = "Número desejado de instâncias de tarefa ECS"
  default     = 1
}

variable "subnet_id_1" {
  description = "subnet id 1"
}

variable "subnet_id_2" {
  description = "subnet id 2"
}

variable "security_groups_id" {
  description = "security groups id"
}

variable "container_port" {
  description = "Porta do contêiner"
  default     = 8080
}
