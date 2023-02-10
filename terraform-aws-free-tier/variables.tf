variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "image_id" {
  type = string
}

variable "ec2_key_name" {
  type = string
}

variable "region" {
  description = "Region for AWS resources"
  type        = string
}