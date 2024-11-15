# AWS Infrastructure with Terraform

## 📋 Project Overview
This repository contains Terraform code to provision and manage an AWS infrastructure. The setup includes a Virtual Private Cloud (VPC) with public and private subnets, an Internet Gateway, routing tables, and subnet associations for efficient network management.

## 🗂️ Project Structure
```
├── internet_gateway.tf            # Creates an Internet Gateway
├── provider.tf                    # Defines the AWS provider
├── routing_table.tf               # Configures the routing tables for the VPC
├── subnet_routing_table_association.tf # Associates routing tables with subnets
├── subnets.tf                     # Provisions public and private subnets
├── vars.tf                        # Defines input variables for the project
├── vpc.tf                         # Creates a VPC
└── README.md                      # Project documentation
```

## 🚀 Features
- Creates a custom VPC.
- Configures both public and private subnets across multiple availability zones.
- Provisions an Internet Gateway and sets up routing for internet access.
- Associates subnets with routing tables for traffic management.
- All resources are fully customizable via variables.

## ⚙️ Prerequisites
Ensure you have the following tools installed:
- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)
- An AWS account with appropriate permissions.

## 🛠️ Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/aws-infrastructure-with-terraform.git
   cd aws-infrastructure-with-terraform
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Validate the configuration:**
   ```bash
   terraform validate
   ```

4. **Plan the infrastructure:**
   ```bash
   terraform plan
   ```

5. **Apply the configuration:**
   ```bash
   terraform apply
   ```
   Confirm with `yes` when prompted.

6. **Destroy the infrastructure (if needed):**
   ```bash
   terraform destroy
   ```

## 📁 Variables
The variables used in this project are defined in `vars.tf`:
- **AWS_REGION**: Specifies the AWS region (default: `ap-south-1`).
- **AWS_VPC_CIDR**: The CIDR block for the VPC (default: `10.0.0.0/16`).

Feel free to adjust the variables to suit your needs.

## 📜 Resources Created
- **VPC** with custom CIDR block
- **Internet Gateway** for public internet access
- **Public and Private Subnets** spread across availability zones
- **Route Tables** and **Associations** for routing traffic
