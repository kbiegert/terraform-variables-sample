variable "echoVersionValue" {
  description = "Use this to echo a version."
  type        = string
}

variable "echoInstallType" {
  description = "Use this to echo an install type - setting to FULLSTACK"
  type        = string
  default     = "FULLSTACK"
}