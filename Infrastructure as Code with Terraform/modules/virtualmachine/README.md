for use this moudle, you need to do some things:
    But at first if you did not register, you will register in the CMD "terraform init".
1. go to setups/main and type "moudle" and "your name" of the moudle(doesnt metter what is the name.)
2. type source = "../modules/virtualmachine" (where is the moudle.)
3. Now you need to fill in all the variables that are in the file ../modules/virtualmachine.variables.
   Below the line sourcr = etc.. , You need to write each variable in a line and compare to the value you want a variable to be equal to. 
   example: VIRTUAL_MACHINE_NAME = "my_virtual_machine_name." (You can compare to any name you want.)   
4. And that's it, you can use the module.
