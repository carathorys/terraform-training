module "my_module" {
  source     = "./my-module" # relative path to "my-module"'s folder
  variable_1 = "cheese"      # Variable defined in 'my-module'
}
locals {
  # reference to the module's output
  local_5 = module.my_module.my_module_output
}
