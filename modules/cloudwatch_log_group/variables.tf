variable "log_group_name" {
  type = string
  description = "Name of log group"
  
}

variable "log_group_class" {
  type = string
  default = null
}

variable "kms_key_id" {
  type = string
  description = "ARN of the kms key"
  default = null
  
}

variable "log_retention_in_days" {
  type = string
  default = 7 
}

variable "tags" {
  type = map(string)
  default = {}
  
}