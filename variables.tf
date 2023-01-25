#create variables
variable "region" {
    type = string
    default = "us-west-2"
  
}
variable "role_session_name" {
    type = string
    default = "terraform-cloud-session"
}

variable "assume_role_arn" {
    type =string
}
variable "vpc_id" {
    type = string 
}
variable "permissions_boundary" {
  type = string
}