# GCP Landing Zone (Terraform)

## Environments
- dev - New
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

gcp-tf-multienv/
│
├── bootstrap/                     ✅ ORG / Landing Zone (run first)
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── provider.tf
│   └── outputs.tf
│
├── env/                           ✅ Workloads (run after bootstrap)
│   ├── dev/
│   │   └── main.tf
│   ├── qa/
│   │   └── main.tf
│   └── prod/
│       └── main.tf
│
├── modules/                       ✅ Reusable modules
│   ├── project/
│   ├── network/
│   └── ...
│
└── cloudbuild.yaml                ✅ CI/CD