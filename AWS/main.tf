# main.tf
# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "teraform"
  region  = "ap-northeast-1"
}

# ---------------------------------------------
# Variables
# ---------------------------------------------
# 変数名：project
# 型：string
variable "project" {
  type = string
}

# 変数名：environment
# 型：string
variable "environment" {
  type = string
}

# 変数名：vpc_address
# 型：string
variable "vpc_address" {
  type = string
}