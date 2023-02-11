# Terraform AWS Free Tier

> Getting started with the Terraform for managing a base free-tier AWS resources.

### Project description
This is a simple [Terraform](https://www.terraform.io/) project for managing AWS resources like EC2 instance, S3 bucket, etc.


It can build AWS infrastructure:
* [EC2 Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) with `SSH key-pair` and Security Groups.


### Pre steps

1. Install [Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)
2. Create AWS account and install [AWS CLI](https://docs.aws.amazon.com/cli/v1/userguide/install-macos.html)
3. Add Terraform profile to the file `~/.aws/credentials`. For example:
   ```text
   [terraform]
   aws_access_key_id = Your access key
   aws_secret_access_key = Your secret access key 
   ```

4. Create a .tfvars file

   ```text
   cp terraform.tfvars.example terraform.tfvars
   ```
5. Create S3 bucket to store Terraform state in cloud which will update remotely.
6. Create config file `./backend/config.tf` that will contain information how to store state in a given bucket. See [example](./terraform-aws-free-tier/backend/example.config.tf).

7. Create SSH key pair to connect to EC2 instance:
   ```bash
   cd ./terraform-aws-free-tier
   # it creates "id_rsa" private key and "id_rsa.pub" public key
   ssh-keygen -t rsa
   ``` 

### Build infrastructure

1. `cd ./terraform-aws-free-tier`
2. `terraform init -backend-config="./backend/config.tf"`
3. `terrafrom validate`
4. `terraform plan`
5. `terraform apply`
   
### Post steps
After building the infrastructure we can try to connect to `EC2 instance` via SSH:
1. `cd ./terraform-aws-free-tier`
2. `ssh -i id_rsa ubuntu@[EC2 public IP]`
3. Check in browser: `http://[EC2 public IP]/`. We can see a text `Terraform Free Tier EC2 Instance` over the page.
   
Destroy infrastructure:

1. `cd ./terraform-aws-free-tier`
2. `terraform destroy`

