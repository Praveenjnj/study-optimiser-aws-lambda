####################################################################################
##################################### REQUIRED #####################################
####################################################################################

/*---------------------------Environment Information ----------------------------*/

variable "env" {
  description = <<DOC
    The environment of the current deployment.
    This can be retrieved from the workflow if using FTET reusable workflows and
    does not need to be set in tfvars.
    The resources created by this module will be named according to this environment.
  DOC
  type        = string
  nullable    = false
}

variable "project" {
  description = <<DOC
    The name of the project repository.
    This can be retrieved from the workflow if using FTET reusable workflows and
    does not need to be set in tfvars.
    This is used to tag resources created by this module.
  DOC
  type        = string
  nullable    = false
}

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

variable "role_name" {
  type        = string
  description = "name of the iam role to be created"
}

variable "aws_service_name"{
  type      = string
  description = "name of the service to be created"
 
}
variable "policy_name" {
  type = string
}

variable "policy_description" {
  type = string
}

variable "function_name" {
    type = string
  
}
variable "package_type" {
    type = string
    description = "zip or image"
    validation {
        condition = contains(["Zip" , "Image"], var.package_type)
        error_message = "package_type must be Zip or Image."
    }
  
}
variable "lambda_architecture" {
    type = string
    default = "x86_64"
}
variable "event_bridge_rule_name" {
    type = string
    
}

variable "region" {
  type = string
  
}

variable "project_name" {
  type = string
  
}


variable "crossaccount_role_arn" {
  type = string
}
variable "environment_variables" {
    type = map(string)
    default = {}
}

variable "archive_bucket" {
  type = string
  
}

variable "archive_bucket_region" {
  type = string
  
}
