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
   <img width="1249" height="463" alt="image" src="https://github.com/user-attachments/assets/1951d7d1-d521-4730-bb0c-680f6120d121" />


3. Review the execution plan:

   ```bash
   terraform plan
   ```
<img width="1916" height="983" alt="image" src="https://github.com/user-attachments/assets/b39ec0bc-eb86-46f1-8b03-bd50ca390151" />
<img width="1914" height="1012" alt="image" src="https://github.com/user-attachments/assets/195b5011-1135-4d7f-a4ac-1e0a3894f9b7" />
<img width="1899" height="999" alt="image" src="https://github.com/user-attachments/assets/595ccc5e-577a-410b-917b-caa6ed27c490" />
<img width="1918" height="963" alt="image" src="https://github.com/user-attachments/assets/73103559-f321-423e-b772-da6737077a0f" />

4. Apply the configuration:

   ```bash
   terraform apply
   ```
   <img width="1236" height="972" alt="image" src="https://github.com/user-attachments/assets/849853db-b148-4080-bfd7-b5ce49767425" />
   <img width="1134" height="963" alt="image" src="https://github.com/user-attachments/assets/5646a240-f4b0-4ffc-87da-0972ed4d4216" />
   <img width="1133" height="971" alt="image" src="https://github.com/user-attachments/assets/efdc22a7-012c-406d-a901-2792e63a203e" />
   <img width="1920" height="2107" alt="image" src="https://github.com/user-attachments/assets/48f02f2d-047b-427e-951b-ab50c67aaafd" />

6. After apply completes, open the `public_ip` output in your browser to confirm Nginx is serving the custom page.
<img width="1913" height="1022" alt="image" src="https://github.com/user-attachments/assets/6949342d-2b68-41a5-8c85-a74f8db69755" />

7. Remove everything when finished:

   ```bash
   terraform destroy
   ```
<img width="1128" height="938" alt="image" src="https://github.com/user-attachments/assets/9c870f3d-eb60-4a4f-b938-8ca2b2fcb233" />
<img width="738" height="944" alt="image" src="https://github.com/user-attachments/assets/1664ab3e-4463-4026-b387-8f78f1620168" />
<img width="1097" height="959" alt="image" src="https://github.com/user-attachments/assets/86e6e54c-b2a5-422a-a244-961dc57d1d0a" />
<img width="898" height="623" alt="image" src="https://github.com/user-attachments/assets/46148341-10a7-4f05-a9d7-c87482e6e5b9" />




