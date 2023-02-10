variable "ec2_key_name" {
  description = "The SSH Key Name"
  type= string
}
variable "ec2_ssh_public_key" {
  description = "The local path to the SSH Public Key"
  type = string
}
variable "image_id" {
  description = "The Amazon Machine Image"
  type = string
}
variable "instance_type" {
  description = "The EC2 Instance type"
  type = string
}
variable "ec2_name" {
  description = "The Name of the EC2 instance"
  type = string
  default="free-tier-tf-ec2-instance"
}
variable "ec2_security_group_name" {
  description = "The Name of the EC2 Security Group"
  type        = string
  default     = "Free Tier EC2 Security Group"
}

variable "ec2_security_group_description" {
  description = "The Description of the EC2 Security Group"
  type        = string
  default     = "Free Tier EC2 Security Group"
}
variable "user_data" {
  description = "taking user data"
  type        = string
}