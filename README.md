Terraform snippet for deploying ASG in private subnet behind ALB

Below is the architecture to be implemented

![image](https://user-images.githubusercontent.com/46480999/169019344-15f9fb61-8587-49bd-a2de-bb6534d8fbb6.png)


a)  main.tf: main.tf file contains the terraform script to create necessary resources.
b)  variables.tf: for declaring variables being used in the main script.
c)  terraform.tfvars: for defining/overriding the varibles.
d)  init_webserver.sh: User data script for launch config which installs & starts nginx server or awscli and creates mount points.


Prerequisites:

AWS account
IAM role with necessary permissions
Terraform & AWS CLI configured on machine from which the scripts are to be run

################# steps for setup ##################
1. aws cli setup configure profile with name of devops.
2. Terraform install on server code will be cloning and running.
3. commands:
4.  git clone https://github.com/saeed0808/best_devops/
5.  cd best_devops
6.  Run terraform init.
7.  Run terraform apply.
After it's done deploying, the example will output DNS url will will get curl it or check in browser
expample curl Demo-ALG-tf-1307299366.ap-south-1.elb.amazonaws.com
output: Hello World

To clean up and delete all resources after you're done, run terraform destroy.

