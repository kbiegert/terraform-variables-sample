variable "echoVersionValue" {
  description = "Use this to echo a version."
  type        = string
  default     = "B"
}

variable "echoInstallType" {
  description = "Use this to echo an install type - setting to FULLSTACK"
  type        = string
  default     = "FULLSTACK"
}

variable "echoList" {
  description = "this is a test list"
  type = list(string)
  #default = ["string1", "string2"]
}