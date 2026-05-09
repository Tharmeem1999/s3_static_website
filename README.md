# AWS S3 Static Website Hosting with Terraform

## Overview

This project demonstrates how to host a static HTML/CSS portfolio website on AWS S3 using Terraform. It automates the provisioning of an S3 bucket, configures it for static website hosting, sets the necessary public access permissions, and uploads the website assets. This project was inspired by the "Simple DevOps Project to Practice Terraform with AWS" tutorial by Cloud Champ.

## Tech Stack

* **Infrastructure as Code (IaC):** Terraform (AWS Provider v6.43.0)
* **Cloud Provider:** Amazon Web Services (S3)
* **Frontend:** HTML5, CSS3

## Project Structure

* **`index.html`**: The main landing page for John Doe's portfolio, uploaded as an S3 object with a `text/html` content type.
* **`error.html`**: A custom 404 error page uploaded alongside the main index file.
* **`main.tf`**: Contains the core AWS resources, including the S3 bucket and ownership controls. It also handles the public access blocks, bucket ACL, S3 objects, and the website configuration.
* **`variables.tf`**: Defines the variables used in the project, setting the default `bucketname` to `s3staticwebsite-ttp2026`.
* **`outputs.tf`**: Defines the output values, specifically printing the S3 bucket's website endpoint after deployment.
* **`provider.tf`**: Configures the AWS provider and sets the region to `us-east-1`.

## Prerequisites

* An active AWS Account.
* AWS CLI installed and configured with appropriate IAM credentials.
* Terraform installed on your local machine.

## How to Deploy

1. **Initialize Terraform:** Run `terraform init` to download the necessary provider plugins and initialize the working directory.
2. **Review the Plan:** Run `terraform plan` to see a preview of the resources that will be created in your AWS account.
3. **Apply Configuration:** Run `terraform apply -auto-approve` to provision the resources.
4. **View Website:** Once the apply process finishes, Terraform will print the `websiteendpoint` to your terminal. Copy and paste this URL into your browser to view the live portfolio.

## Clean Up

To avoid incurring unwanted AWS charges, remember to destroy the infrastructure when you are done experimenting. You can do this by running `terraform destroy -auto-approve`.