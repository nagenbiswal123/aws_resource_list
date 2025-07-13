# AWS Resource List Script

## Description

This is a **Shell script** that lists resources for common AWS services in your AWS account.  
It helps you quickly check what you have running in a specific region for services like EC2, S3, RDS, VPC, Lambda, and more.

---

## ✏️ Author

**Author:** Nagen Biswal  
**Date:** 13 Jul 2025  
**Version:** v0.0.1

---

## ⚡ Supported AWS Services

This script currently supports listing resources for the following AWS services:

1. EC2  
2. S3  
3. RDS  
4. DynamoDB  
5. Lambda  
6. EBS  
7. ELB *(Note: Add implementation if needed)*  
8. CloudFront  
9. CloudWatch  
10. SNS  
11. SQS  
12. Route53  
13. VPC  
14. CloudFormation  
15. IAM

---

## 🛠️ Prerequisites

Before using this script, make sure:

- ✅ **AWS CLI is installed**  
  [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

- ✅ **AWS CLI is configured** with valid credentials  
  ```bash
  aws configure

