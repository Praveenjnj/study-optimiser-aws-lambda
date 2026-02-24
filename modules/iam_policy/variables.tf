variable "policy_name" {
  type = string
}

variable "policy_description" {
  type = string
}

variable "policy_statements" {
  type = list(object({
    Sid = optional(string)
    Effect = string
    Action = any
    Resource = any
    Condition = optional(map(any))
  }))
}

 variable "tags"{
  type    = map(string)
  description = "a map of tags to be applied to resource"
}

  