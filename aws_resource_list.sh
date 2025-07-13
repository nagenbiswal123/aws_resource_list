#! /bin/bash

#################################################
# This script will list all the services in the aws acoount
# Author: Nagen Biswal
# Date: 13 Jul 2025
# Version: v0.0.1
# 
# Following are the supported AWS services by the script
# 1. EC2
# 2. S3
# 3. RDS
# 4. DynamoDB
# 5. Lambda
# 6. EBS
# 7. ELB
# 8. CloudFront
# 9. CloudWatch
# 10. SNS
# 11. SQS
# 12. Route53
# 13. VPC
# 14. CLoudFormation
# 15. IAM

# This script will prompt the user to enter the AWS region and the service and the service to which the resource nneed to be listed.
# Usage: ./aws_resource_list.sh <region_name> <resource_name>
# Example: ./aws_resource_list.sh ap-south-1 EC2

#################################################

# Check the required number of arguments are passed
if [ $# -ne 2 ]; then
	echo "Please enter all the arguments with below format"
	echo "Usage: ./aws_resource_list.sh <region_name> <resource_name>"
	echo "Example: ./aws_resource_list.sh ap-south-1 EC2"
        exit 1
fi


# Assign the arguments to variables and convert the service to lowercase
aws_region=$1
aws_service=$2

# Check if the AWS CLI is installed
if ! command -v aws &> /dev/null; then
  	echo "AWS CLI is not installed. Please install the AWS CLI and try again."
	exit 1
fi

# Check if the AWS CLI is configured
if [ ! -d ~/.aws ]; then
	echo "AWS CLI is not configured. Please configured the AWS CLI and try again."
   	exit 1
fi



# List the resources based on the service
case $aws_service in
   ec2)
	echo "Listing EC2 instances in $aws_region"
	aws ec2 describe-instances --region $aws_region
	;;

    rds)
	echo "Listing the RDS Instances in $aws_region"
	aws rds describe-db-instances --region $aws_region
	;;

    s3)
	echo "Listing the S3 Buckets in $aws_region"
	aws s3api list-buckets --region $aws_region
	;;

    cloudfront)
	echo "Listing the CloudFront Distributions in $aws_region"
	aws cloudfront list-ditributions --region $aws_region
	;;

    vpc)
	echo "Listing the VPCs in $aws_region"
	aws ec2 describe-vpcs --region $aws_region
	;;

    iam)
	echo "Listing the IAM Users in $aws_region"
	aws iam list-users --region $aws_region
	;;

    route53)
	echo "Listing the Route53 Hosted Zones in $aws_region"
	aws route53 list-hosted-zones --region $aws_region
	;;

    cloudwatch)
	echo "Listing the CloudWatch Alarms in $aws_region"
	aws cloudwatch describe-alarms --region $aws_region
	;;

    cloudformation)
	echo "Listing the CLoudFormation Stacks in $aws_region"
	aws cloudformation describe-stacks --region $aws_region
	;;

    labmda)
	echo "Listing the Lambda Functions in $aws_region"
	aws lambda list-functions --region $aws_region
	;;

    sns)
	echo "Listing the SNS Topics in $aws_region"
	aws sns list-topics --region $aws_region
	;;

    sqs)
	echo "Listing the SQS Queues in $aws_region"
	aws sqs list-queues --region $aws_region
	;;

    dynamodb)
	echo "Listing the DynamoDB Tables in $aws_region"
	aws dynamodb list-tables --region $aws_region
	;;

    ebs)
	echo "Listing the EBS Volumes in $aws_region"
	aws ebs describe-volumes --region $aws_region
	;;
    *)
	echo "Invdali Service, please enter avalid service"
	exit 1
	;;
esac
