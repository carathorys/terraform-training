# Declaration of `variable_1`
variable "variable_1" {
  default     = "DEFAULT_VALUE"                                                    # (optional)
  description = "The short description of what the module needs this variable for" # (optional)
  sensitive   = true                                                               # (optional) When true, it will retain the value from the outputs
  type        = string                                                             # The type of the variable. 
  # The type can be 'string', 'bool', 'number', 'list(<TYPE>)', 'set(<TYPE>)', 'map(<TYPE>)', 'object({<ATTR NAME> = <TYPE>, ... })', or 'tuple([<TYPE>, ...])'

  # Can put some validation rules with `validation` tag, but to be honest, I never tried it out yet.
  validation {
    condition     = length(var.variable_1) > 4 && substr(var.variable_1, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

# You can reference to these variables with the `var` keyword before their names:
locals {
  local_var_4 = "The value of the input variable is '${var.variable_1}'"
}
