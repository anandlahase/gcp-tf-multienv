# GCP Landing Zone (Terraform)

## Environments
- dev
- prod

## Run Locally
terraform init
terraform plan
terraform apply

## CI/CD
Uses Cloud Build with:
- fmt
- validate
- security scan
- plan
- apply (conditional)