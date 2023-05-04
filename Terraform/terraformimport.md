# Terraform import

Use the terraform import command to import existing infrastructure to Terraform state.

The terraform import command can only import one resource at a time. It cannot simultaneously import an entire collection of resources, like an AWS VPC.

Create a VPC from UI in aws-cloud: Mandatory value : IPv4 CIDR.

```
terraform init
terraform import aws_vpc.vpc vpcID
```

terraform tfstate file will be created ,now we can manage VPC from terraform code itself .
Changing the param enable_dns_hostnames to true,previously it was false.

add to the import.tf code enable_dns_hostnames = true
```
provider "aws" {
  region = "us-east-2"
}
resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}
```

