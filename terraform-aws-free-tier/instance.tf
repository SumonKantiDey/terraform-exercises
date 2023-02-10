
# call module (ec2) by passing value 

module "mywebserver" {
  source             = "./modules/ec2"
  ec2_key_name       = var.ec2_key_name
  ec2_ssh_public_key = file("${path.module}/id_rsa.pub") #file() will read the public file content via argument
  image_id           = var.image_id
  instance_type      = var.instance_type
  user_data = file("${path.module}/script.sh") # terraform do not know about the script update whether it is fail or not
}

output "mypublicIp" {
  value = module.mywebserver.publicIP
}

output "tags_all" {
  value = module.mywebserver.tags_all
}