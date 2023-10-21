
# Terraform Modularized EKS Setup

This repository contains a modularized Terraform configuration for setting up an AWS Elastic Kubernetes Service. The infrastructure includes Elastic Kubernetes components (IAM roles, policies, nodegroup), networking components, compute instances, and security groups.

## Modules Overview:

1. **Network Module**: Sets up VPC, subnets, internet gateway, and route tables.
2. **Compute Module**: Launches EC2 instance to access the EKS cluster.
3. **Security Module**: Defines security groups with specific ingress and egress rules.
4. **EKS Module**: Defines EKS cluster, master and worker policies, role and policy attachment, nodegroup, scaling configuration.
5. **EKS Security Group Module**: Define the security group needed for creating EKS worker nodes.

## Prerequisites:

- Terraform installed
- AWS CLI configured with appropriate credentials

## Usage:

1. **Initialization**: Navigate to the `terraform` directory and run:
   ```
   terraform init
   ```

2. **Planning**: To see which changes will be applied:
   ```
   terraform plan
   ```

3. **Applying**: To apply the changes:
   ```
   terraform apply
   ```

4. **Destroying**: If you want to destroy all resources created by this configuration:
   ```
   terraform destroy
   ```

## Variables:

Please refer to `variables.tf` in the root and inside the modules for configurable variables. Each variable has a description and default value provided.

## Security Note:

Please review the security configurations, especially the security group rules and IAM policies, before deploying this setup in a production environment. Ensure that the configurations adhere to your organization's security standards.

## Version Information:

This configuration has been tested with Terraform version XX.XX (replace with your version) and AWS provider version YY.YY (replace with your version).

