# AWS EC2 Instance
# the below one is simply company name in real time
you can create EC2 instance in joindevops using this module 


## Inputs

* ami_id(optional) - AMI ID that needs to be used by instance(project - user). Default is devops-practice i.e ami-0220d79f3f480ecf5
* instance_type(optional) - Instance type to be used by instance(project - user). Valid values are t3.small, t3.micro, t3.medium. Default is t3.micro
* security_group_ids(required) - A list of sequrity Group ID's to attach Instance(project - user)
* tags(required) - A map of tags to be associated with Instance(project - user)

## Outputs
* public_ip - Public IP of the instance created
* private_ip - Private IP of the instance created
* instance_id - Instance ID of the inmstance created