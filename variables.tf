variable "ami_id" {
    type = string  # here give, because its is module right, so, while using this in project, they should know it corectly, eventhough it is not mandatory
    default = "ami-0220d79f3f480ecf5" #this ami_id can be overridible in project, if project wants.
    description = "AMI ID of the EC2 instance" # Not mandatory, but should give in module
}

variable "instance_type" {
    type = string #  Not mandatory but should give in module
    default = "t3.micro" #this ami_id can be overridible in project as below validation.
    description = "Instance size" # Not mandatory but should give in module

    # in google type - terraform variables list condition validations, so i ll get below validation
    #for our project, we are using below instance type only for now...
      validation {
        condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "valid values for instance_type are: t3.micro, t3.small, t3.medium"
      }
}

#mandatory to provide, (and it ll be givenm project.)
variable "security_group_ids" {
    type = list # mandatory

}

#actually tags are not mandatory, but we are making as mandatory here
variable "tags" {
    type = map
}