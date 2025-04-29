variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "sg_id" { #with out value empty means mandotory

}

variable "instance_type" {
  default = "t3.micro"
  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "valid values for instance type are: t3.micro t3.small t3.medium"
  }
}

variable "tags" {
  default = {} #it is called optional
}