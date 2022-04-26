# Declare some output for the submodule we’re working on
output "my_module_output" {
  depends_on = [
    # We'll talk about this later
  ]
  description = "The description of my output"
  # You can flag your output as sensitive. In such cases, it will be suppressed from the outputs,
  # but you can still use the value in other places, outside of the module.
  sensitive = false
  value     = local.local_var_4
}
