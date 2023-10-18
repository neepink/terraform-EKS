
# Terraform Modularized EKS Setup

This repository contains a modularized Terraform configuration for setting up an AWS Elastic Kubernetes Service. The infrastructure includes Elastic Kubernetes components(IAM roles, policies, nodegroup), networking components, compute instances, security groups.

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

1. **Initialization**:
   Navigate to the `terraform` directory and run:
   ```
   terraform init
   ```
2. **Validate**:
   Validate the syntax of terraform files:
   ```
   terraform validate
   ```
3. **Plan**:
   Review the changes that Terraform will perform:
   ```
   terraform plan
   ```

4. **Apply**:
   Apply the desired changes:
   ```
   terraform apply
   ```

5. **Destroy** (optional):
   If you want to tear down the infrastructure:
   ```
   terraform destroy
   ```

## Note:

Ensure you modify the variables as needed, either by updating the `variables.tf` files within modules or by providing values during the `terraform apply` step.

## Contributing:

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


