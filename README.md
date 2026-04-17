# 🚀 GCP Landing Zone (Terraform)

This repository contains a **multi-environment GCP landing zone setup** using Terraform, following best practices for **infrastructure, security, and CI/CD automation**.

---

## 🌍 Environments

* **dev** – Active development environment
* **qa** – Testing / validation environment
* **prod** – Production environment

---

## 📁 Project Structure

```
gcp-tf-multienv/
│
├── bootstrap/                 # ORG / Landing Zone (run first)
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── provider.tf
│   └── outputs.tf
│
├── env/                       # Workloads (run after bootstrap)
│   ├── dev/
│   │   └── main.tf
│   ├── qa/
│   │   └── main.tf
│   └── prod/
│       └── main.tf
│
├── modules/                   # Reusable Terraform modules
│   ├── project/
│   ├
```
