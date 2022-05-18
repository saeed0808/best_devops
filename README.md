=> You’re the new and only DevOps Engineer of a startup company. The company needs to run a webserver on AWS using infrastructure as code.

=> Launch a webserver on an EC2 instance with the following config:

- Must be allowed to read files from an S3 bucket you’ve created.
- Inside an autoscaling group with scaling policies
-
          - scale-in: CPU utilization > 80%
          - scale-out: CPU utilization < 60%
          - minimum number of instances = 1
          - maximum number of instances = 3
          
- Inside a private subnet
- Under a public load balancer
- Install a webserver NGINX through bootstrapping
- The webserver should be accessible only through the load balancer


Below is the architecture to be implemented

![image](https://user-images.githubusercontent.com/46480999/169019344-15f9fb61-8587-49bd-a2de-bb6534d8fbb6.png)


1. main.tf: main.tf file contains the terraform script to create necessary resources.
2. variables.tf: for declaring variables being used in the main script.
4. init_webserver.sh: User data script for launch config which installs & starts nginx server or awscli and creates mount points.


Prerequisites:

AWS account
IAM role with necessary permissions
Terraform & AWS CLI configured on machine from which the scripts are to be run

################# steps for setup ##################Infra setup default region is ap-south-1

1. aws cli setup configure profile with name of devops.
2. Terraform install on which laptop/server you will be using to cloning and running code.
3. commands:

         git clone https://github.com/saeed0808/best_devops.git;
         cd best_devops;
         terraform init;
         terraform plan;
         terraform apply;
         
         It will ask Enter a value: type yes and press enter
         
         Enter a value: yes


Note: if you get any error please read carefully and troubleshoot if still any issue or consern reachout to me directly shared contact details same.

4. After it's done deploying, the example you will get output DNS url curl it or check in browser output shot be showing Hello World
5.  ![image](https://user-images.githubusercontent.com/46480999/169030542-2eddc7c8-a089-41c5-ade9-c854091586aa.png)

 Example:  curl Demo-ALG-tf-831906437.ap-south-1.elb.amazonaws.com
     
        output: Hello World

To clean up and delete all resources after you're done, run 
         
         terraform destroy
         Enter a value: yes

