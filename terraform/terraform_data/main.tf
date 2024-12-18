# First we create a terraform data block that is intentionally empty
resource "terraform_data" "resource1" {
  //intentionally leaving empty
}


#Second, we can create a terraform data block that is controlled by a variable. 
#Changes to the variable cause a change in the Terraform data block
resource "terraform_data" "resource2" {
  input = var.variable_1
}

#By connecting the output of resource2 to the input of resource3, we have created an implicit dependency:
resource "terraform_data" "resource3" {
    input = terraform_data.resource2.output
}