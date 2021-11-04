1. add tou your setups dir file 'terraform.tfvars.json' and add all the varilables example:
   {
       RESOURCE_GROUP_NAME = "rg"
       AZURE_LOCATION = "westeurope"
   } 

2. enter to /setups and write in terminal 'terraform init'.
3. go to /setups/main.tf and take the code in lines 251-261 and put them in comment and run in terminal 'terraform apply'.
4. and after all the script go well , You can take the code you put in the comment in the previous section, and put it back into action, and run 'terraform apply' again.
5. And this is it you are welcome to enter and run the project or the vm's.