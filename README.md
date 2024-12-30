# 🌟 CloudCraft Static - Static Website Hosting with Terraform

## 📜 Description
CloudCraft Static is a Terraform-based project designed to host a static website using AWS S3. It automates the provisioning of the necessary AWS infrastructure and uploads your website files, enabling you to deploy static websites seamlessly.

## 🛠️ Features
- 🌐 Static website hosting on AWS S3.
- 🔓 Configurable public access settings for hosted content.
- 📜 Custom S3 bucket policy to allow public object access.
- 🔄 Automated upload of website files (e.g., `index.html`, `style.css`).
- 📍 Outputs the S3 website endpoint upon successful deployment.

## 📂 File Structure
```
CloudCraft_Static/
├── main.tf       # Core Terraform configuration.
├── variables.tf  # Variable definitions.
├── provider.tf   # AWS provider configuration.
├── output.tf     # Outputs for Terraform.
├── index.html    # Example HTML file for the website.
├── style.css     # Example CSS file for the website.
```

## 🚀 How to Use

### Prerequisites
- 🖥️ Terraform installed on your local machine.
- 🔑 AWS CLI configured with necessary permissions.
- 📂 A backend S3 bucket created to store Terraform state.

### Steps
1. 📝 Clone the repository:
   ```bash
   git clone <repository-url>
   cd CloudCraft_Static
   ```
2. 🔧 Customize the `index.html` and `style.css` files as per your requirements.
3. 📦 Initialize Terraform:
   ```bash
   terraform init
   ```
4. 📐 Validate the configuration:
   ```bash
   terraform validate
   ```
5. 📊 Apply the configuration:
   ```bash
   terraform apply
   ```
6. 🌐 Access your website using the endpoint provided in the Terraform output.

## 📋 Configuration Details
- **Backend S3 Bucket:**
  The `backend "s3"` block in `main.tf` stores the Terraform state file in an S3 bucket named `backend-2102003`.
- **AWS Region:**
  Configured in `variables.tf` with the default region set to `us-east-1`.

## 📤 Outputs
After successful deployment, the following output is displayed:
- 🌐 `endpoint`: http://prathmesh2102003.s3-website-us-east-1.amazonaws.com

## 🎉 Acknowledgments
Special thanks to the Terraform and AWS communities for their excellent resources and support.

Happy Hosting! 🚀

