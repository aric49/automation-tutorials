#Print a basic Python message
import os

terraform_variable = os.environ.get("TERRAFORM_VARIABLE", "UNDEFINED")

print(f"hello world! I'm being executed by Terraform!!")
print(f"The Value of the Terraform variable is {terraform_variable}")