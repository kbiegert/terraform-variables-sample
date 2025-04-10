variable "echoVersionValue" {
  description = "Use this to echo a version."
  type        = string
  default     = "B"
  nullable = false
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


variable "testObject" {
  description = "This is a test variable of type object."
  type        = object({
      key2 = string
    })
}

variable "testString" {
  description = "This is a test variable of type string."
  type        = string
}

variable "testNumberInt" {
  description = "This is a test variable of type integer - not required in tf"
  type        = number
  default     = 1
}

variable "testNumberFloat" {
  description = "This is a test variable of type float."
  type        = number
}

variable "testBool" {
  description = "This is a test variable of type bool."
  type        = bool
  default = false
}

variable "testList" {
  description = "This is a test variable of type list."
  type        = list(number)
}

variable "testMap" {
  description = "This is a test variable of type map."
  type        = map(string)
}

variable "testPassword" {
  description = "This is a test password with no default value"
  type        = string
  sensitive   = true
}

variable "testOptions" {
  description = "This is a test options array"
  type = string
}
