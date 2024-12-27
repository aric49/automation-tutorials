resource "terraform_data" "my_block" {
  input = var.provisioner_data

  triggers_replace = [
    var.provisioner_data
  ]

  provisioner "local-exec" {
    command = "python python_script.py"
    environment = {
      "TERRAFORM_VARIABLE" = var.provisioner_data
    }
  }
}