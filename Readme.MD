# Zoosh TF Training

## Strutcure

### `main.tf`:
This file will contain our infrastructure itself

### `provider.tf`: 
This file will set up the necessary Terraform providers like AWS, and set the needed credentials, etc...

### `terraform.tf`: 
This file will tell which providers, libraries we'll use, and what we'll use for our _"backend"_, where we'll store the state of our deployed stack