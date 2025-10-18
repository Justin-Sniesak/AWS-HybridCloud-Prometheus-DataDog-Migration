## Troubleshooting Callout
4 distinct troubleshooting events were logged, demonstrating skills in resolving Docker image mismatches, pod crash loops, network policy, JSON errors, and Terraform configuration failures across GCP and ProxMox.

## DataDog
**Summary:** 
  
## EC2
**Summary:** 

- 2025-10-17 Create EC2 Instance Terraform will be installed on.
  ![ec21-1](../EC2/ec21-1.jpg)

## IAM
**Summary:** 

- 2025-10-17 Create Admin group and attach AdministratorAccess policy to group.
  ![iam1-1](../IAM/iam1-1.jpg)
- 2025-10-17 Create admin user, add to the admin group; create and secure access keys, enable and require MFA for this account.
  ![iam1-2](../IAM/iam1-2.jpg)
- 2025-10-17 Update minimum password requirenments for IAM users.
  ![iam1-3](../IAM/iam1-3.jpg)
- 2025-10-17 Create EC2_Admin role to attach to EC2 instances so can be managed by Terraform (plan/apply.
  ![iam1-4](../IAM/iam1-4.jpg)

## Misc - AWS
**Summary:** 

- 2025-10-17 Install aws-cli on terraform EC2 instance for enhanced administration and troubleshooting.
  ![misc1-1](../MISC-AWS/misc1-1.jpg)

## Prometheus
**Summary:** 

## Terraform
**Summary:**

- 2025-10-17 Install Terraform on EC2 instance.
  ![tf1-1](../Terraform/tf1-1.jpg)
- 2025-10-17 Deploy IaC raw EC2 instances using Terraform.
  ![tf1-2](../Terraform/tf1-2.jpg)
- 2025-10-17 Destroy IaC raw EC2 instances using Terraform.
  ![tf1-3](../Terraform/tf1-3.jpg)

## Troubleshooting
**Summary:**

- 2025-10-17 
Problem: Providers Terraform file was missing closing brace
Root Cause: } was missing from block in providers manifest
Resolution: Added missing closing brace
Validation: Terraform plan completed with no errors returned
![ts1-1](../Troubleshooting/ts1-1.jpg)
- 2025-10-17 
Problem: Terraform plan failing due to lack of permissions
Root Cause: IAM EC2 admin role was not attached to instances
Resolution: Create EC2_Admin role and attach (iam1-4)
Validation: Terraform plan completed with no errors returned
![ts1-2](../Troubleshooting/ts1-2.jpg)
- 2025-10-17 
Problem: AMI annotated in compute manifest is not downloading
Root Cause: Version of Ubuntu server annotated (24.02) is not available currently in US-WEST-2
Resolution: Using AWS-CLI query for available AMI, update compute manifest for the latest version available (22.04)
Validation: Terraform apply completed and infra was provisioned
![ts1-3](../Troubleshooting/ts1-3.jpg)

## VPC
**Summary:** 
