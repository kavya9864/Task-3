ELEVATE LABS TASK 3

## Description of TASK 3: Infrastructure as Code (IaC) with Terraform

In this task, Terraform was used to provision a Docker container running NGINX on a local Ubuntu machine. The Terraform configuration (`main.tf`) used the `kreuzwerker/docker` provider to pull the `nginx:latest` image and create a container named `nginx-server` with port `8080` exposed.

The following commands were used:
- `terraform init` → Initialize Terraform
- `terraform plan` → View execution plan
- `terraform apply` → Create Docker container
- `terraform state list` → Check managed resources
- `terraform destroy` → Remove all resources

Outcome:  
NGINX container was successfully created and destroyed using Terraform commands.

