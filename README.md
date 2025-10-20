## AWS Hybrid Cloud Infrastructure with DataDog Observability Migration

## 🚀 Overview: Production-Grade Hybrid Cloud Operations

This portfolio demonstrates enterprise-grade hybrid cloud infrastructure connecting AWS and on-premises environments through site-to-site VPN, Infrastructure as Code (Terraform), and complete observability migration from Prometheus to DataDog.
Built in 13 hours to demonstrate rapid infrastructure deployment, troubleshooting capability, and documentation discipline for real-world operational challenges.

---

I. Core Competency Showcase
PillarKey AchievementDemonstrated ProficiencyHybrid Cloud ConnectivityEstablished site-to-site VPN between AWS and on-premises ProxMox infrastructure using WireGuard.AWS VPC, WireGuard, Network Security, Hybrid Architecture.Infrastructure as CodeProvisioned all AWS and on-premises compute resources declaratively using Terraform.Terraform, AWS (EC2, IAM, VPC), ProxMox Automation.Observability MigrationMigrated complete monitoring stack from Prometheus to DataDog with custom dashboards.Prometheus, DataDog, Node Exporter, Metrics Collection, Dashboard Creation.Security & IAMImplemented least-privilege IAM policies, MFA requirements, and secure service account management.AWS IAM, RBAC, Access Keys, Security Best Practices.

II. Technical Deep Dive (Proof of Work)

Detailed, timestamped documentation of all operational procedures, troubleshooting steps, and successful validations can be found in the accompanying OPERATIONS_LOG.md file.
10 distinct troubleshooting events documented - demonstrating real-world problem-solving across Terraform, networking, observability platforms, and cloud infrastructure.

III. Highlights

📑 Full operational logs and troubleshooting steps are available in OPERATIONS_LOG.md

Built complete hybrid cloud infrastructure in 13 hours with zero prior DataDog or site-to-site VPN experience.
Established secure site-to-site connectivity between AWS and on-premises infrastructure using WireGuard VPN.
Migrated observability platform from Prometheus to DataDog with 6 custom dashboards (CPU, memory, disk, network, uptime).
Provisioned infrastructure declaratively using Terraform across AWS and on-premises ProxMox hypervisor.
Documented 10 troubleshooting events with root cause analysis, resolution steps, and validation procedures.
Implemented security best practices: IAM least privilege, MFA enforcement, secure key management, service account roles.


IV. Architecture

Components:

AWS: EC2 instances, VPC, IAM (users, groups, roles, service accounts)
On-Premises: ProxMox hypervisor with multiple guests
Connectivity: WireGuard site-to-site VPN
Observability: DataDog (migrated from Prometheus)
Automation: Terraform for all infrastructure provisioning

Technologies:

Cloud: AWS (EC2, VPC, IAM)
IaC: Terraform
Networking: WireGuard VPN, site-to-site connectivity
Observability: Prometheus, DataDog, Node Exporter
Hypervisor: ProxMox
OS: Ubuntu, various Linux distributions

V. Repository Structure
├── README.md
├── Docs/
│   ├── OPERATIONS_LOG.md       # Timestamped troubleshooting and procedures
│   └── Architecture_Diagram    # Infrastructure topology
├── Manifests/
│   ├── AWS/                    # Terraform AWS infrastructure manifests
│   └── ProxMox/                # Terraform On-premises infrastructure manifests
├── Screenshots/
│   ├── DataDog/                # DataDog configuration and dashboards
│   ├── EC2/                    # AWS EC2 provisioning
│   ├── IAM/                    # IAM security configuration
│   ├── Prometheus/             # Prometheus deployment
│   ├── Terraform/              # Infrastructure provisioning
│   ├── Troubleshooting/        # Problem resolution documentation
│   └── VPN/                    # Site-to-site connectivity validation

VI. Key Learning Outcomes

Rapid Platform Adoption:

Learned DataDog from zero to production dashboards in one day
Configured first site-to-site VPN (on-prem ↔ cloud) with full validation

Independent Problem-Solving:

Debugged 10 distinct infrastructure issues without external assistance
Documented root cause analysis for each issue

Documentation Discipline:

Real-time screenshot capture during all procedures
Timestamped operational logs with validation steps
Reproducible troubleshooting methodology


VII. Project Timeline

Build Time: 13 hours (single day)
Prior Experience: Zero (DataDog, site-to-site VPN)
Troubleshooting Events: 10 documented issues resolved
Infrastructure: AWS + on-premises hybrid cloud
Result: Production-grade deployment with complete observability migration

VIII. Reproducibility

All infrastructure is provisioned declaratively via Terraform. To reproduce:

Configure AWS credentials and Terraform backend
Update variable files for your environment
terraform plan to validate configuration
terraform apply to provision infrastructure
Configure WireGuard VPN endpoints
Deploy DataDog agents with provided configurations
Validate connectivity and observability

Full deployment procedures documented in OPERATIONS_LOG.md.

Author: Justin Sniesak
Contact: LinkedIn | GitHub
Portfolio: Platform Engineering Lab

Built to demonstrate: Hybrid cloud architecture, rapid platform adoption, systematic troubleshooting, and documentation discipline for enterprise infrastructure operations.
