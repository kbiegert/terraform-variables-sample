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


variable "testObject" {
  description = "This is a test variable of type object."
  type        = object({
      key2 = string
    })
}

variable "testListObject" {
  description = "This is a test variable of type list(object)."
  type        = list(object({
      key2 = string
    }))
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

variable "testNotSet" {
  description = "This is being set to NOT_SET in manifest"
  type = string
}

variable "testNull" {
  description = "This is being set to NULL in manifest"
  type = string
}

variable "appSecurityRules" {
  description = "Security group created for VSI"
  type = object({
    name = string
    rules = list(
      object({
        name      = string
        direction = string
        source    = string
        tcp = optional(
          object({
            port_max = number
            port_min = number
          })
        )
        udp = optional(
          object({
            port_max = number
            port_min = number
          })
        )
        icmp = optional(
          object({
            type = number
            code = number
          })
        )
      })
    )
  })
  default = { 
    "name": "httpd-sg",
    "rules": [
      {
        "name"      : "httpd-port-80",
        "direction" : "inbound",
        "source"    : "0.0.0.0/0",
        "tcp": {
            "port_max" : 80,
            "port_min" : 80
        }
      },
      {
        "name"      : "ssh-port-22",
        "direction" : "inbound",
        "source"    : "0.0.0.0/0",
        "tcp" : {
            "port_max" : 22,
            "port_min" : 22
        }
      },
      {
        "name"      : "outbound-off",
        "direction" : "outbound",
        "source"    : "0.0.0.0/0"
      },
      { 
        "name"      : "httpd-port-443",
        "direction" : "inbound",
        "source"    : "0.0.0.0/0",
        "tcp": {
            "port_max": 443,
            "port_min": 443
        }
      }
    ]
  }
}
