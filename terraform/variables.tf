variable "aws_region" {
  description = "Die AWS-Region, in der die Instanz erstellt werden soll."
  type        = string
}

variable "ami_id" {
  description = "Die AMI-ID für die EC2-Instanz."
  type        = string
}

variable "instance_type" {
  description = "Der Typ der EC2-Instanz."
  type        = string
  default     = "t2.micro"
}

variable "vpc_security_group_ids" {
  description = "Liste der IDs der Sicherheitsgruppen, die der Instanz zugewiesen werden."
  type        = list(string)
}

variable "subnet_id" {
  description = "Die ID des Subnetzes, in dem die EC2-Instanz erstellt werden soll."
  type        = string
}

variable "key_name" {
  description = "Der Name des SSH-Schlüssels für den Zugriff auf die Instanz."
  type        = string
}
