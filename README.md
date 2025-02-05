# Terraform-modules
This Terraform module repository provides a comprehensive set of reusable infrastructure templates for deploying and managing a wide range of AWS services. It covers core AWS resources, including:

- **EC2**: Automate the provisioning of scalable compute resources to run applications and services.
- **S3**: Easily create and manage highly available and durable object storage buckets for data storage.
- **RDS**: Set up relational databases for applications with configurations for high availability and automated backups.
- **IAM**: Manage access control and permissions for AWS services, ensuring secure access management.
- **VPC**: Define and configure virtual networks, subnets, and routing for secure, isolated environments for resources.
- **Lambda**: Provision serverless functions to run code in response to events, removing the need to manage servers.
- **CloudWatch**: Automate monitoring of AWS resources, log aggregation, and metric collection to track application performance.
- **SNS**: Provision Simple Notification Service (SNS) topics to manage messaging and communication between distributed services.
- **SQS**: Create Simple Queue Service (SQS) queues to enable reliable message queuing for decoupled applications.
- **EKS**: Set up and manage highly available Kubernetes clusters with Amazon Elastic Kubernetes Service (EKS) for container orchestration.
- **ECS Fargate**: Provision containerized applications using Amazon ECS with Fargate for serverless container execution.

Each module is designed to be self-contained, ensuring modularity and scalability while allowing for custom configurations tailored to your needs. These modules follow best practices for infrastructure-as-code (IaC), ensuring a consistent, efficient, and repeatable approach to deploying AWS resources. With clear separation of concerns and customizable parameters, these modules are suited for a variety of use cases from development to production environments, enabling streamlined cloud deployments and full control over your AWS infrastructure.

**Directory structure**
            aws-infrastructure/
            ├── main.tf
            ├── variables.tf
            ├── outputs.tf
            ├── provider.tf
            ├── terraform.tfvars
            ├── modules/
            │   ├── ec2/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── s3/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── vpc/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── iam/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── rds/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── lambda/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── cloudwatch/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── sns/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── sqs/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── ecs/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── kms/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   ├── eks/
            │   │   ├── main.tf
            │   │   ├── variables.tf
            │   │   └── outputs.tf
            │   └── ecs_fargate/
            │       ├── main.tf
            │       ├── variables.tf
            │       └── outputs.tf
