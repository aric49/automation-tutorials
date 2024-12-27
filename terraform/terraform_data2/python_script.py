import os


def main(): 
    #Print a basic  message based on the value of a Terraform variable
    terraform_variable = os.environ.get("TERRAFORM_VARIABLE", "UNDEFINED")
    print(f"hello world! I'm being executed by Terraform!!")
    print(f"The Value of the Terraform variable is {terraform_variable}")


if __name__ == "__main__":
    main()