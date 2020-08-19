provider "aws" {
  region  = "us-west-2"
  version = "~> 2.12"
}

module "shared-state-store" {
  source = "../../"
  name   = "synapsestudios-com"

  tags = {
    Owner         = "SynapseStudios"
    Provisioner   = "terraform"
    ProvisionedBy = "james@synapsestudios.com"
    ProvisionedOn = "2020-01-21"
    BillTo        = "SynapseStudios"
  }
}

# TODO this causes race condition, state store needs to be provisioned first
# terraform {
#   backend "s3" {
#     bucket         = "terraform-state-state-synapsestudios-com"
#     key            = "infra.tfstate"
#     region         = "us-west-2"
#     dynamodb_table = "terraform-state-state-synapsestudios-com"
#   }
# }
