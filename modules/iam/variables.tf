variable "role_name" {
  type        = string
  description = "name of the iam role to be created"
}

variable "aws_service_name"{
  type      = string
  description = "name of the service to be created"
 
}

variable "tags"{
  type    = map(string)
  description = "a map of tags to be applied to resource"
}

