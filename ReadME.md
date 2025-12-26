Terraform AWS Infrastructure Setup – Task 1
Overview
This project provisions AWS infrastructure using Terraform.
All resources are created using Infrastructure as Code (IaC) without any manual AWS Console resource creation.

Resources Created
EC2 Instance (Amazon Linux)
Security Group allowing:
SSH (Port 22)
Jenkins (Port 8080)
AWS Credentials Configuration
AWS credentials are configured securely using environment variables.

The following environment variables are used:

AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
Credentials are not hardcoded in any Terraform files and are not committed to GitHub, following security best practices.

Terraform Remote Backend (State Management)
Terraform state is stored remotely in an Amazon S3 bucket.

Remote backend configuration:

Backend type: S3
State file location: task1/terraform.tfstate
Using a remote backend ensures:

Centralized state management
Improved security
Consistent infrastructure tracking
Project Structure


terraform-aws-task-2
Terraform AWS EC2 with Application Load Balancer (Jenkins)

Overview

This project extends Task 1 by provisioning an Application Load Balancer (ALB) using Terraform and exposing Jenkins securely through the ALB instead of accessing it via the EC2 public IP.

All resources are created using Infrastructure as Code (IaC) without manual configuration from the AWS Console.
 Resources Created
EC2 Instance

Ubuntu EC2 instance created using Terraform

Jenkins installed and running on port 8080

Jenkins runs as a systemd service (background service)

Application Load Balancer (ALB)

Internet-facing ALB created using Terraform

Routes HTTP traffic to Jenkins running on EC2

Jenkins is accessed only via ALB DNS

Target Group

Target type: instance

Port: 8080

Health check configured for Jenkins endpoint

Listener

HTTP Listener on port 80

Forwards traffic to Jenkins target group

Security Groups
ALB Security Group

Inbound rules:

HTTP – Port 80

HTTPS – Port 443

Outbound rules:

All traffic allowed

EC2 Security Group

Inbound rules:

SSH – Port 22

Jenkins – Port 8080 (allowed only from ALB security group)

Outbound rules:

All traffic allowed
