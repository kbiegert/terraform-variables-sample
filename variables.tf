variable "thisOneisNullable" {
  description = "This var has nullable set to true."
  type        = string
  default     = "B"
  nullable    = true
}

variable "thisOneisNotNullable" {
  description = "This var has nullable set to false"
  type        = string
  default     = "FULLSTACK"
  nullable    = false
}

variable "thisOneisRegular" {
  description = "This var does not have the nullable keyword"
  type        = string
  default     = "FULLSTACK"
}