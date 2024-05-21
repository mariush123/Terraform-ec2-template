# Terraform EC2 Instance Creation

This repository contains Terraform configurations to provision EC2 instances on AWS. 
This README provides instructions on how to use Terraform to create EC2 instances, including two methods for managing SSH keys: 
1.Generating the key using Terraform 
2.Downloading the key directly from the AWS Management Console.

## Prerequisites

Before using Terraform to create EC2 instances, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS account credentials configured on your machine.

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/terraform-ec2-instances.git
   cd terraform-ec2-instances

2.Initialize Terraform:
  
     terraform init




**Method 1: Generate SSH Key using Terraform**

Comment the sshkey name in the main.tf file in the repository.
Uncomment and Update the key_name parameter in the aws_key_pair resource with your desired key name.

**Method 2: Download SSH Key from AWS Management Console**

**Follow these steps to download an existing SSH key from the AWS Management Console:**
  Navigate to the EC2 dashboard in the AWS Management Console.
  Select "Key Pairs" from the left-hand menu.
  Create a new key pair or select an existing one.
  Download the private key file (*.pem).

  Update the key_name variable with the name of the SSH key pair created or downloaded in step 3.

  3. Plan the terraform resources:

      terraform plan

``4. Provision EC2 instances:
  
          terraform apply

  5. CleanUp:

           terraform destroy

  

   
