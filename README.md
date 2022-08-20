# README #



+ Folder **modules** contain 4 sub-folders: **s3**, **dynamoDB**, **rds**, **vpc**. Each of the sub-folders has configuration files for the resources. 
    * **s3** will ceate a s3 bucket in aws.
    * **dynamoDB** will ceate a dynamoDB table in aws.
    * **vpc** will create a **VPC**, **2 subnets**(1 public, 1 private), **internet gateway**, **NAT gateway**, **security groups** and **2 EC2 instances** (one associated with the public subnet and the other one with the private subnet).
    * **rds** will ceate a rds instance in aws and this rds will be associated the vpc that was created from the **vpc** module and also it will use the subnets that were created from the **vpc** module to create a **db subnet group**.



+ **bbpipeline_merge.yml** is the yml file that Setup a Bitbucket Pipeline to automate this:
    * On every PR(Pull Request) merge, Bitbucket Pipeline executes the Terraform Code and deploys **RDS** on AWS. 
    * Also it will **create two ec2 instances** so that we can access the **rds privately**. It will also use the **aws S3** as **terraform backend** and **DynamoDB** for **state locking**.



+ Folder **provisioners** contain **main.tf**, **variable.tf**, **terraform.tfstate** files. It will create an **ec2 instance** and with **terraform provisioner** it will install **LAMP** stack on the instance.



+ **bitbucket-pipelines.yml** is the yaml file that Setup a Bitbucket Pipeline :
    * We have to start this pipeline manually because it has **custom** that Defines pipelines that can only be triggered manually or scheduled from the Bitbucket Cloud interface.
    * It will create **two ec2** instances and **RDS** from the folder called **Modules**.
    * When we are starting the pipeline We can select whteher or not we want to **create**, **update** or **destroy** the **resources**.