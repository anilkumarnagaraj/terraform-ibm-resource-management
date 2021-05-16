#####################################################
# IBM Cloud Resource Management
# Copyright 2021 IBM
#####################################################

###################################################################
# Create resource group
###################################################################
resource "ibm_resource_group" "resource_group" {
  count = var.is_new_resource_group ? 1 : 0
  name  = var.name
}

###################################################################
# Read resource group
###################################################################
data "ibm_resource_group" "resource_group" {
  count = var.is_new_resource_group ? 0 : 1
  name  = var.name
}