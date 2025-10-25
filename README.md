## AWS Hybrid Cloud Infrastructure with DataDog Observability Migration

## 🚀 Overview: Production-Grade Hybrid Cloud Operations

This portfolio demonstrates enterprise-grade hybrid cloud infrastructure connecting AWS and on-premises environments through site-to-site VPN, Infrastructure as Code (Terraform), and complete observability migration from Prometheus to DataDog.
Built in 13 hours (single workday) to demonstrate extreme execution velocity, rapid troubleshooting capability, and documentation discipline.

## Core Competency Showcase

| PillarKey | Achievement | Demonstrated Proficiency
|-------|------|-------|
| Hybrid Cloud Connectivity | Established site-to-site VPN between AWS and on-premises ProxMox infrastructure using WireGuard | AWS VPC, WireGuard, Network Security, Hybrid Architecture |
| Infrastructure as Code | Provisioned all AWS and on-premises compute resources declaratively using Terraform | Terraform, AWS (EC2, IAM, VPC), ProxMox Automation |
| Observability Migration | Migrated complete monitoring stack from Prometheus to DataDog with custom dashboards | Prometheus, DataDog, Node Exporter, Metrics Collection, Dashboard Creation |
| Security & IAM  | Implemented least-privilege IAM policies, MFA requirements, and secure service account management | AWS IAM, RBAC, Access Keys, Security Best Practices |

---

I. Technical Deep Dive (Proof of Work)

Detailed, timestamped documentation of all operational procedures, troubleshooting steps, and successful validations can be found in the accompanying OPERATIONS_LOG.md file.
10 distinct troubleshooting events documented - across Terraform, networking, observability platforms, and cloud infrastructure.

II. Highlights

📑 Full operational logs and troubleshooting steps are available in OPERATIONS_LOG.md

- Deployed complete Hybrid Cloud infra in 13 hours with 0 prior experience in DataDog or production WireGuard site-to-site VPN.

- Established secure site-to-site connectivity between AWS and on-premises infrastructure using WireGuard VPN.

- Executed full observability platform migration from Prometheus to DataDog, establishing 6 custom production dashboards (CPU, Mem, Net, Disk, Uptime).

- Provisioned infrastructure declaratively using Terraform across AWS and on-premises ProxMox hypervisor.

- Documented 10 troubleshooting events with root cause analysis, resolution steps, and validation procedures.

- Implemented security best practices: IAM least privilege, MFA enforcement, secure key management, service account roles.

## III. Architecture

## Components:

- AWS: EC2 instances, VPC, IAM (users, groups, roles, service accounts)

- On-Premises: ProxMox hypervisor with multiple guests

- Connectivity: WireGuard site-to-site VPN

- Observability: DataDog (migrated from Prometheus)

- Automation: Terraform for all infrastructure provisioning

## Technologies:

- Cloud: AWS (EC2, VPC, IAM)

- IaC: Terraform

- Networking: WireGuard VPN, site-to-site connectivity

- Observability: Prometheus, DataDog, Node Exporter

- Hypervisor: ProxMox

- OS: Ubuntu

---

## IV. Repository Structure
```
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
```

## V . Project Timeline and summary

- Build Time: 13 hours (single day)

- Troubleshooting Events: 10 documented issues resolved

- Infrastructure: AWS + on-premises hybrid cloud

- Result: Production-grade deployment with complete observability migration

---

Justin Sniesak 

Infrastructure Engineer | Cloud | Kubernetes | CI/CD | Go
📍 Seattle, WA
