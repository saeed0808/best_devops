Terraform snippet for deploying ASG in private subnet behind ALB

Below is the architecture to be implemented

![image](https://user-images.githubusercontent.com/46480999/169019344-15f9fb61-8587-49bd-a2de-bb6534d8fbb6.png)


1. main.tf: main.tf file contains the terraform script to create necessary resources.
2. variables.tf: for declaring variables being used in the main script.
3. terraform.tfvars: for defining/overriding the varibles.
4. init_webserver.sh: User data script for launch config which installs & starts nginx server or awscli and creates mount points.


Prerequisites:

AWS account
IAM role with necessary permissions
Terraform & AWS CLI configured on machine from which the scripts are to be run

################# steps for setup ##################
1. aws cli setup configure profile with name of devops.
2. Terraform install on which laptop/server you will be using to cloning and running code.
3. commands:
         git clone https://github.com/saeed0808/best_devops/
         cd best_devops
         terraform init
         terraform apply


Note: if you get any error please read carefully and troubleshoot if still any issue or consern reachout to me directly shared contact details same.

4. After it's done deploying, the example you will get output DNS url curl it or check in browser output shot be showing Hello World
Example:  curl XXXXXXXXXXXXXXX
output: Hello World

To clean up and delete all resources after you're done, run 
           terraform destroy

