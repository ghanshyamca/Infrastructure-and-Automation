# Terraform Nginx on Ubuntu EC2

This project provisions a single Ubuntu 20.04 LTS EC2 instance in the default AWS VPC, installs Nginx, and serves a custom HTML page.

## Resources Created

- 1 AWS EC2 instance using Ubuntu 20.04 LTS
- 1 security group allowing inbound HTTP (80) and SSH (22)
- Terraform output for the instance public IP

## Files

- `main.tf` - AWS provider, data sources, EC2 instance, security group, and user data
- `variables.tf` - Configurable values such as region and instance type
- `outputs.tf` - Instance output values
- `README.md` - Run instructions and project notes

## Prerequisites

- Terraform CLI installed
- AWS credentials configured in your shell or AWS CLI profile
- An optional EC2 key pair name if you want SSH access to the instance

## How to Run

1. Change into the project directory:

   ```bash
   cd terraform-nginx-ubuntu
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Review the execution plan:

   ```bash
   terraform plan
   ```

4. Apply the configuration:

   ```bash
   terraform apply
   ```

5. After apply completes, open the `public_ip` output in your browser to confirm Nginx is serving the custom page.

6. Remove everything when finished:

   ```bash
   terraform destroy
   ```

## Custom HTML Page

The EC2 user data script installs Nginx and replaces the default index page with:

> Welcome to the Terraform-managed Nginx Server on Ubuntu

## Screenshots

Add screenshots of the deployed Nginx page here after running the deployment, for example:

- Browser view of the custom Nginx page at the instance public IP
- Terminal output showing `terraform apply`
- Terminal output showing `terraform destroy`

## Notes

- The instance is launched in the default VPC only.
- No extra VPC, subnet, or internet gateway is created.
- All created resources are tagged for easier identification.
- `terraform destroy` removes the EC2 instance and security group created by this configuration.
