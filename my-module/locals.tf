
# Declaration of local variables
locals {
  # Declare `local_var_1`
  local_var_1 = "My local variable's value"
  # You can also use string substitution
  local_var_2 = "My second local variable's value, using the ${var.variable_1}"
}

# Later you can reference to your local variable with the `local` keyword before it's name
locals {
  local_var_3 = "The value of the `local_var_1` is ${local.local_var_1}"
}
