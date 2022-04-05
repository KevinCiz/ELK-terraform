# Configure the AWS Provider
provider "aws" {
  version                 = "~> 3.0"
  region                  = var.region
  shared_credentials_file = "%USERPROFILE%\\.aws\\credentials"
}
