locals {

   region = {
      "default" = "us-east-1"
      "test" = "us-west-2"
    }
}

locals {
  vpc_cidr = {
    "default" = "10.0.0.0/25"
    "test" = "10.0.0.0/26"
  }
}

locals {
  tags = {
    "default" = "default"
    "test" = "test"
  }
}

locals {
   environment ="${terraform.workspace}"
}
