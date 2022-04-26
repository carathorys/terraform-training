# Zoosh TF Training

## Basic keywords

* `locals`: Locally defined variables
* `variable`: Input for the current module
* `output`:  Output of a module
* `provider`: Provider what can define resources, and data sources
* `resource`: Resource what terraform needs to maintain
* `data`: External data which should be fetched from a remote provider
* `module`: Defines a module in the current one
* `terraform`: Configuration block for Terraform itself

## Files we have so far

### `.terraform.lock.hcl`: 
This is a dependency lock file, like the `package-lock.json` or `yarn.lock`, just for Terraform. If you check out the repository, and run the `terraform init` command, it will download the necessary providers from the TF registry
