# TERRAFORM_09_S3_BUCKET_WITH_UPLOAD

## Project Overview

This Terraform project creates an AWS S3 bucket and uploads files into it. It demonstrates how to manage S3 buckets and S3 objects using Terraform.

## What This Project Creates

- One AWS S3 bucket
- Uploaded file objects
- Optional bucket tags
- Optional output for bucket name

## Technologies Used

| Technology | Purpose |
| --- | --- |
| Terraform | Infrastructure as Code |
| AWS S3 | Object storage |
| `aws_s3_object` | File upload |

## Recommended Files

```text
TERRAFORM_09_S3_BUCKET_WITH_UPLOAD/
├── provider.tf
├── s3.tf
├── variables.tf
├── outputs.tf
├── files/
│   └── sample.txt
└── README.md
```

## Example Use Case

This project can upload files such as:

- Text files
- HTML files
- Images
- Static assets

## Prerequisites

- AWS account
- Terraform installed
- AWS CLI configured
- Globally unique S3 bucket name
- Local file available for upload

## Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

Type `yes` when prompted.

## Verify Uploaded Files

```bash
aws s3 ls s3://YOUR_BUCKET_NAME
```

## Download or View Object

```bash
aws s3 cp s3://YOUR_BUCKET_NAME/sample.txt .
```

## Destroy Resources

```bash
terraform destroy
```

## Important Notes

- Bucket names must be globally unique.
- Terraform tracks uploaded objects in state.
- Changing a local file can update the uploaded S3 object.
- Empty the bucket if destroy fails because of existing objects.
