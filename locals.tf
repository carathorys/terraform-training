# Declaration of local variables
locals {
  # Declare `local_var_1`
  local_var_1 = "My local variable's value"
  # You can also use string substitution
  local_var_2 = "My second local variable's value, using the ${local.local_var_1}"
}

# Later you can reference to your local variable with the `local` keyword before it's name
locals {
  # local_var_3 will be an array of strings, with only one item
  local_var_3 = ["The value of the `local_var_1` is ${local.local_var_1}"]
  # local_map will be a map
  local_map = {
    my_key_1 = "my_value_1"
    my_key_2 = "my_value_2"
  }
}
