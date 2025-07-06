module "aft1" {
    source = "./modules/aft-account-request"
    control_tower_parameters = {
        AccountEmail = "sakalak+aft1@amazon.com"
        AccountName = "aft1"
        ManagedOrganizationalUnit = "Sandbox (ou-jl8v-kolgi4le)"
        SSOUserEmail = "sakalak+aft1@amazon.com"
        SSOUserFirstName = "aft"
        SSOUserLastName = "1"
    }
    account_tags = {
        "Learn Tutorial" = "AFT1"
    }
    change_management_parameters = {
        change_requested_by = "HashiCorp Learn"
        change_reason = "Learn AWS Control Tower Account Factory for Terraform"
    }
    custom_fields = {
        group = "non-prod"
    }
    account_customizations_name = "sandbox"
}