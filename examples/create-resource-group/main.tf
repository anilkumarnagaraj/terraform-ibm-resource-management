#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
}

###################################################################
# Create resource group
###################################################################
module "resource-group" {
  //Uncomment the following line to point the source to terraform registry level
  //source = "terraform-ibm-modules/resource-management/ibm//modules/resource-group"

  source                = "../../modules/resource-group"
  is_new_resource_group = var.is_new_resource_group
  name                  = var.name
}