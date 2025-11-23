variable "ami_id" {
    type = string  # here give, because its is module right, so, while using this in project, they should know it corectly, eventhough it is not mandatory
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of the EC2 instance" # Not mandatory
}

variable "instance_type" {
    type = string #  Not mandatory
    default = "t3.micro"
    description = "Instance size" # Not mandatory

    # in google type - terraform variables list condition validations, so i ll get below validation
    #for our project, we are using below instance type only for now...
      validation {
        condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "Invalid values for instance_type are: t3.micro, t3.small, t3.medium"
      }
}

#mandatory to provide
variable "security_group_ids" {
    type = list # mandatory

}

#actually tags are not mandatory, but we are making as mandatory here
variable "tags" {
    type = map
}