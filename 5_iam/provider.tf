provider "aws" {
 region = "us-east-2"
 access_key = "AKIAS3QAC4CHTXSACZMI"
 secret_key = "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"
}

data "aws_caller_identity" "current" {
}

resource "random_id" "clusterid" {
  byte_length = "2"
}

locals {
  infrastructure_id = "${var.infrastructure_id != "" ? "${var.infrastructure_id}" : "${var.clustername}-${random_id.clusterid.hex}"}"
}