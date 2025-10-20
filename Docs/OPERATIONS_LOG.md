## Troubleshooting Callout
11 distinct troubleshooting events were logged.

## DataDog
**Summary:** 

- 2025-10-19 Install DataDog agent on all on-prem guests; vaidated service was running; validated running in a good state on all guests
  ![dd1-1](../DataDog/dd1-1.jpg)
- 2025-10-19 Validate installed DataDog agent is returning metrics on one of installed on-prem guests
  ![dd1-2](../DataDog/dd1-2.jpg)
- 2025-10-19 Additional smoke test on one of on-prem guests by tailing and validating DataDog logs
  ![dd1-3](../DataDog/dd1-3.jpg)
- 2025-10-19 AMIs (host_alias) are showing up in DataDog graphs, updated the agent config on each to reflect the hostname then restart the service and validate agent health
  ![dd1-4](../DataDog/dd1-4.jpg)
- 2025-10-19 DataDog dashboard single pane of glass view (Migrated from Prometheus)
  ![dd1-5](../DataDog/dd1-5.jpg)
- 2025-10-19 Net_Sent dashboard
  ![dd1-6](../DataDog/dd1-6.jpg)
- 2025-10-19 CPU_utilization dashboard
  ![dd1-7](../DataDog/dd1-7.jpg)
- 2025-10-19 Net_Recv dashboard
  ![dd1-8](../DataDog/dd1-8.jpg)
- 2025-10-19 Host_Uptime dashboard
  ![dd1-9](../DataDog/dd1-9.jpg)
- 2025-10-19 MEM_Utilization dashboard
  ![dd1-10](../DataDog/dd1-10.jpg)
- 2025-10-19 Disk_Utilization dashboard
  ![dd1-11](../DataDog/dd1-11.jpg)

## EC2
**Summary:** 

- 2025-10-19 Install AWS-CLI on EC2 instance
  ![ec21-1](../EC2/ec21-1.jpg)
- 2025-10-19 Create RSA key pair, add to EC2 instance, install Terraform, validate version.
  ![ec21-2](../EC2/ec21-2.jpg)
- 2025-10-19 Create access key pair, configure AWS-CLI, then validate.
  ![ec21-3](../EC2/ec21-3.jpg)

## IAM
**Summary:** 

- 2025-10-19 Create Admin group and attach AdministratorAccess policy to group.
  ![iam1-1](../IAM/iam1-1.jpg)
- 2025-10-19 Create admin user, add to the admin group; create and secure access keys, enable and require MFA for this account.
  ![iam1-2](../IAM/iam1-2.jpg)
- 2025-10-19 Update minimum password requirenments for IAM users.
  ![iam1-3](../IAM/iam1-3.jpg)
- 2025-10-19 Create EC2_Admin role to attach to EC2 instances so can be managed by Terraform (plan/apply.
  ![iam1-4](../IAM/iam1-4.jpg)
- 2025-10-19 Create Prometheus service account in AWS account
  ![iam1-5](../IAM/iam1-5.jpg)
- 2025-10-19 Attach EC2ReadOnlyAccess user policy to Prometheus service account
  ![iam1-6](../IAM/iam1-6.jpg)
- 2025-10-19 Create access keys for Prometheus service account
  ![iam1-7](../IAM/iam1-7.jpg)
- 2025-10-19 Export Prometheus service accountaccess and secret keys, validate service account user account details
  ![iam1-8](../IAM/iam1-8.jpg)

## Prometheus
**Summary:** 

- 2025-10-19 Install Prometheus and Node Exporter on on-prem guest; validate Prometheus version installed and node-exporter service is running
  ![prom1-1](../Prometheus/prom1-1.jpg)
- 2025-10-19 Install node-exporter on S2S peer in AWS account (EC2 instance)
  ![prom1-2](../Prometheus/prom1-2.jpg)
- 2025-10-19 After validating VPN peering, Prometheus installed on on-prem guest; scraping both EC2 instance in AWS account via S2S VPN and on-prem; validate all guests present and returning an up status
  ![prom1-3](../Prometheus/prom1-3.jpg)
- 2025-10-19 Comment out scrape jobs and targets in Prometheus as part of DatDog migration
  ![prom1-4](../Prometheus/prom1-4.jpg)
- 2025-10-19 Validated all targets have been vacated from Prometheus as have been migrated to dataDog
  ![prom1-5](../Prometheus/prom1-5.jpg)

## Terraform
**Summary:**

- 2025-10-19 Provisioned IaC resources using Terraform in AWS account.
  ![tf1-1](../Terraform/tf1-1.jpg)
- 2025-10-19 Install Terraform on on-prem guest
  ![tf1-2](../Terraform/tf1-2.jpg)
- 2025-10-19 Provision compute resources on-prem via Terraform
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
- 2025-10-19 

Problem: Terraform plan failing

Root Cause: VPC had typo in vpc_id in manifest, corrected and plan ran to completion

Resolution: Corrected manifest typo

Validation: Terraform plan completed, moved to apply after validating no other issues
![ts1-4](../Troubleshooting/ts1-4.jpg)
- 2025-10-19 

Problem: Terraform apply failing

Root Cause: The originally specified AMI was not available in the desired region

Resolution: Located alternate AMI and updated manifest

Validation: Terraform apply ran ran to completion
![ts1-5](../Troubleshooting/ts1-5.jpg)
- 2025-10-19 

Problem: Terraform is failing when attempting to plan provisioning on-prem compute infra

Root Cause: Provider block was not specified correctly in manifest in accordance with provider specifications

Resolution: Updated manifest to provider specifications and plan completed without issue

Validation: Terraform plan completed without issue after correcting
![ts1-6](../Troubleshooting/ts1-6.jpg)
- 2025-10-19 

Problem: Terraform plan is failing when preparing to provision on-prem compute resources

Root Cause: Aliases used in provider block were not written correctly per vendor specifications

Resolution: Researched and updated manifest so aliases match provider specifications

Validation: Terraform plan completed without issue after correcting
![ts1-7](../Troubleshooting/ts1-7.jpg)
- 2025-10-19 

Problem: Port forwarding from laptop to EC2 failing due to SSH timing out between peered proxmox guest and EC2 instance

Root Cause: RSA keypair was failing despite originally configuring, and portforwarding was configured incorrectly 

Resolution: Re-created RSA keypair and updated portforwarding syntax

Validation: Validated both tunnel and handshakes returned good; validated SSH; validated portforwarding remainded up
![ts1-8](../Troubleshooting/ts1-8.jpg)
- 2025-10-19 

Problem: Datadog agent will not complete API call; nothing in populating dashboard in DataDog GUI

Root Cause: Two - API key in config was incorrect, and app key was malformed

Resolution: Regenerated new keys, updated config, restarted the agent, validated the agent was healthy and returning expected output 

Validation: Dashboard is now returning metrics for guest as expected
![ts1-9](../Troubleshooting/ts1-9.jpg)
- 2025-10-19 

Problem: DataDog agent unreachable and returning connection refused

Root Cause: Config was pointing to the incorrect region which was causing the agent to fail connection attempts

Resolution: Updated the site specified in the agent config and restarted the agent 

Validation: Agent can now connect to the correct region and is passing metrics
![ts1-10](../Troubleshooting/ts1-10.jpg)
- 2025-10-19 

Problem: The DataDog agent was importing the hostname_alias (AMI) instead of the hostname for all EC2 instances, which is showing up in the created graphs on the web GUI instead of the desired hostnames

Root Cause: Hostname was not defined in the config which was causing the agent to default to the alias

Resolution: Updated the config file to reflect the proper hostname, ensured the alias was commented out, restarted the service, validated agent health 

Validation: Validated the hostname is now showing up in all created dashboards
![ts1-11](../Troubleshooting/ts1-11.jpg)

## VPN
**Summary:**

- 2025-10-19 Bring up Wireguard on on-prem guest, validate can ping peer in AWS account, and handshake completed succesfully 
  ![vpn1-1](../VPN/vpn1-1.jpg)
- 2025-10-19 Bring up Wireguard on EC2 instance, validate can ping peer hosted on on-prem hypervisor, and handshake completed succesfully 
  ![vpn1-2](../VPN/vpn1-2.jpg)
## VPC
**Summary:** 
