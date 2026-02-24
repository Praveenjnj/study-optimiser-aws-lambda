variable "policy_name" {
  type = string
}

variable "policy_description" {
  type = string
}

variable "policy_statements" {
  type = list(objects({
    Effect = string
    Action = list(string)
    Resource = list(string)
    Condition = optional(map(any))
  }))
}

 variable "tags"{
  type    = map(string)
  description = "a map of tags to be applied to resource"
}

  