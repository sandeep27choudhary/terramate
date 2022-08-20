cd ..
cd modules

#Creating Resources
if [[ "$1" == "S3-dynamoDB-EC2-VPC" ]]; then
    cd s3
    terraform init
    terraform plan -var-file 's3.tfvars'
    terraform apply -var-file 's3.tfvars' -auto-approve   
    cd ..

    cd dynamoDB
    terraform init
    terraform plan -var-file 'dynamoDB.tfvars'
    terraform apply -var-file 'dynamoDB.tfvars' -auto-approve
    cd ..

    cd vpc
    terraform init
    terraform plan -var-file 'vpc.tfvars'
    terraform apply -var-file 'vpc.tfvars' -auto-approve   
    cd ..

elif [[ "$1" == "S3-dynamoDB-EC2-VPC_and_RDS" ]]; then
    cd s3
    terraform init
    terraform plan -var-file 's3.tfvars'
    terraform apply -var-file 's3.tfvars' -auto-approve   
    cd ..

    cd dynamoDB
    terraform init
    terraform plan -var-file 'dynamoDB.tfvars'
    terraform apply -var-file 'dynamoDB.tfvars' -auto-approve    
    cd ..

    cd vpc
    terraform init
    terraform plan -var-file 'vpc.tfvars'
    terraform apply -var-file 'vpc.tfvars' -auto-approve
    cd ..

    cd rds
    terraform init
    terraform plan -var-file 'rds.tfvars'
    terraform apply -var-file 'rds.tfvars' -auto-approve
    cd ..
fi

#Updating Resources
if [[ "$2" == "EC2_and_VPC" ]]; then
    cd vpc
    terraform init
    terraform plan -var-file 'vpc.tfvars'
    terraform apply -var-file 'vpc.tfvars' -auto-approve
    cd ..

elif [[ "$2" == "S3" ]]; then
    cd s3
    terraform init
    terraform plan -var-file 's3.tfvars'
    terraform apply -var-file 's3.tfvars' -auto-approve
    cd ..

elif [[ "$2" == "dynamoDB" ]]; then
    cd dynamoDB
    terraform init
    terraform plan -var-file 'dynamoDB.tfvars'
    terraform apply -var-file 'dynamoDB.tfvars' -auto-approve
    cd ..
elif [[ "$2" == "RDS" ]]; then
    cd rds
    terraform init
    terraform plan -var-file 'rds.tfvars'
    terraform apply -var-file 'rds.tfvars' -auto-approve
    cd ..
    
fi

#Deleting Resources
if [[ "$3" == "yes_destroy" ]]; then
    cd rds
    terraform init
    terraform plan -var-file 'rds.tfvars'
    terraform destroy -var-file 'rds.tfvars' -auto-approve
    cd ..
    cd vpc
    terraform init
    terraform plan -var-file 'vpc.tfvars'
    terraform destroy -var-file 'vpc.tfvars' -auto-approve
    cd ..
fi