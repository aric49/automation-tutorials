resource "terraform_data" "my_block" {
  input = var.data_block_trigger

  provisioner "local-exec" {
    command = "python python_script.py"
    environment = {
      "TERRAFORM_VARIABLE" = var.data_block_trigger
    }
  }
}