# Terraform with Github

> Getting started with the Terraform for managing github repositories.

```
- terraform init # to initialize provider
- terraform validate
- terraform plan # to read all of the .tf file
- terraform apply or terraform apply -auto-approve #apply the plan without asking for confirmation.
- terraform show # to check the tfstate file
- terraform refresh # to merge with the remote change
- terraform destroy or terraform destroy -target github_repository.github-terraform-repo
```