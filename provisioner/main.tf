provider "aws" {
   region     = var.aws_region
}

resource "aws_instance" "ec2_example" {

    ami = var.instance_ami  
    instance_type = var.aws_instance_type
    associate_public_ip_address = var.instance_public_ip
    key_name = var.security_key_name
    vpc_security_group_ids = var.security_group
    subnet_id = var.instance_subnet

connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("/home/xs223-sudpra/Downloads/sudipxs2.pem")
    host     = self.public_ip
  }

provisioner "remote-exec" { 
    inline = [
      "sudo apt-get update -y",

      "sudo apt install curl -y", #installing curl
    
      "sudo apt install mysql-client-core-8.0", #installing mysql
      
      "sudo apt update && sudo apt upgrade -y",

      #installing PHP with Apache
      "sudo apt install software-properties-common -y",
      "sudo add-apt-repository ppa:ondrej/php -y",
      "sudo apt update -y",
      "sudo apt -y install php8.0",

      #printing out the versions of apache, mysql and php
      "echo $(apache2 -v) && echo $(mysql -V) && echo $(php --version)",
    ]
}
}