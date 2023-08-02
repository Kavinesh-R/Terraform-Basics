# Terraform EC2 Instance with SSH Access

This Terraform configuration allows you to create an EC2 instance of Ubuntu with SSH access enabled from anywhere.

## Prerequisites

Before you begin, make sure you have the following installed:

1. Terraform: You can download it from the official website: https://www.terraform.io/downloads.html

2. AWS CLI: You'll need to configure your AWS credentials using the AWS CLI.

## Getting Started

1. Clone this repository to your local machine.

2. Set up your AWS credentials using the AWS CLI.

3. Navigate to the directory where you saved the Terraform configuration file (ec2 Creation.tf).

4. Initialize Terraform by running the following command:

`terraform init`




5. Review the configuration in the ec2 Creation.tf file to ensure it matches your requirements. You can customize the AWS region, instance type, AMI, key pair, etc.

6. Create and apply the Terraform configuration to create the EC2 instance and security group:

`terraform apply`




Terraform will show you the changes it's going to make, and you'll need to type "yes" to proceed.

7. After the Terraform apply completes successfully, you will see the public IP address of your Ubuntu EC2 instance in the output. Use this IP address to connect to your instance via SSH:

`ssh ubuntu@<PUBLIC_IP_ADDRESS>`



Replace <PUBLIC_IP_ADDRESS> with the actual public IP address provided by Terraform.

## Cleaning Up

After you're done experimenting with the EC2 instance, remember to destroy the resources to avoid unnecessary charges on your AWS account:

`terraform destroy`


This will remove the EC2 instance and the associated security group from your AWS account.

Happy Terraforming!

You can add this content to a file named "README.md" in the same directory where you have the Terraform configuration file (ec2 Creation.tf). Make sure to update any placeholders (e.g., <PUBLIC_IP_ADDRESS>) with actual values before committing the README.md file to your GitHub repository.
