provider "aws" {
 profile = "default"
 region = lookup(local.region, local.environment)
 }

resource "aws_vpc" "vpc" {
 cidr_block = lookup(local.vpc_cidr, local.environment)
 enable_dns_support = true
 enable_dns_hostnames = true
 tags = {
  Name = lookup(local.tags, local.environment)
  }
}

