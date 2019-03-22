#--------------------------------------------------------------
# Data
#--------------------------------------------------------------
data "terraform_remote_state" "get_id123" {
  backend = "s3"

  config {
    bucket  = "lokesh-sandbox-terraform"
    key     = "lokeshtodwal/tf-training"
    region  = "us-west-2"
    profile = "sandbox"
  }
}

#--------------------------------------------------------------
# Common
#--------------------------------------------------------------
variable env {
  default = "sandbox"
}

variable region {
  default = "us-west-2"
}

variable "project_key_name" {
  default = "lokesh-sandbox"
}

variable "project_instance_type" {
  default = "t3.nano"
}

variable "project_num_instances" {
  default = "2"
}

variable "private_domain_zone_id" {
  default = "Z130DSEP3kjl"
}

#--------------------------------------------------------------
# User related
#--------------------------------------------------------------
variable "creator_username" {
  description = "Username of the person creating stack"
}


