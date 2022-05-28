variable "region" {
    description = "AWS region to use"
    default = "us-east-1"
    type = string
  
}

variable "environment" {
    type = string
    default = "test"
  
}

variable "name" {
    description = "Name to use for resources"
    type = string
    default = "wordpress"
  
}

variable "organization" {
    description = "Github organization to use"
    type = string
    default = "AXKICKA"
  
}

variable "circleci_cli_token" {
    description = "CircleCi CLI token to use"
    type = string
 #   default = "null"  #Nothing set and terraform will ask for it during the apply. Can be set as a terraform var and pass it to terrafrom as you run terraform
}

variable "tags" {
    description = "tags"
    type = map(string)

    default = {
      "managed_by" = "terraform"
    }
  
}


