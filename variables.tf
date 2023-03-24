

variable "testObject" {
  description = "This is a test variable of type object."
  type        = object({
    key1 = string
    key2 = object({
        key3      = string
        key4      = string
    })
  })
}

variable "testString" {
  description = "This is a test variable of type string."
  type        = string
}

variable "testNumberInt" {
  description = "This is a test variable of type integer."
  type        = number
}

variable "testNumberFloat" {
  description = "This is a test variable of type float."
  type        = number
}

variable "testBool" {
  description = "This is a test variable of type bool."
  type        = bool
}

variable "testList" {
  description = "This is a test variable of type list."
  type        = list
}

variable "testMap" {
  description = "This is a test variable of type map."
  type        = map
}