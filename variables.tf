variable "aws_profile" {
  description = "Perfil local de AWS CLI"
  type        = string
}
variable "aws_region" {
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "ebs_size" {
  description = "Tamaño del volumen EBS en GiB"
  type        = number
  default     = 8
}