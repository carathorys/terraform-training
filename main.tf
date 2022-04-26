module "my_module" {
  source     = "./my-module" # relative path to "my-module"'s folder
  variable_1 = "cheese"      # Variable defined in 'my-module'
}
locals {
  # reference to the module's output
  local_5 = module.my_module.my_module_output
}

module "same_module_from_github" {
  # Reference a module from git
  source               = "git@github.com:carathorys/terraform-training-remote-module.git?ref=1.0.0"
  remote_modules_input = true # Define input variables
}

locals {
  # reference to the module's output
  local_6 = module.same_module_from_github.remote_modules_output
}
