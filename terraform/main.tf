terraform {
    required_version = ">= 0.12"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = var.region
}

module "backend" {
    source = "./modules/remote_backend"
    user_name = var.user_name
    bucket_name = var.bucket_name
    table_name = var.table_name
}

output "iam_user_name" {
    value = module.backend.iam_user_name
}
