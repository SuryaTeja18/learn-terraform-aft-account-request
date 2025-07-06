# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_aft1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "sakalak+aft01@amazon.com"
    AccountName  = "sandbox-account-01"
    ManagedOrganizationalUnit = "Sandbox (ou-jl8v-kolgi4le)"
    SSOUserEmail     = "sakalak+aft01@amazon.com"
    SSOUserFirstName = "aft"
    SSOUserLastName  = "01"
  }

  account_tags = {
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Surya Teja"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "c"
  }

  account_customizations_name = "sandbox-aft1"
}