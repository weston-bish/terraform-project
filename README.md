# Terraform AWS Infrastructure with GitHub Actions

This project provisions AWS infrastructure using Terraform and automates deployment with GitHub Actions.

## Tech Used:

- Terraform
- AWS
- GitHub Actions

## What It Does:

- Defines AWS infrastructure using Terraform
- Runs Terraform validation and deployment via GitHub Actions
- Uses GitHub Secrets for AWS credentials. I would use OIDC in production.

## How It Works:

1. Code is pushed to GitHub
2. GitHub Actions runs Terraform commands
3. AWS infrastructure is created or updated

## Why This Project?

Built to demonstrate Infrastructure as Code, CI/CD automation, and AWS cloud fundamentals for job interviews.
