#for naming conventions, in the place of roboshop, we have changed to [this/main -> generally, this two ll be used morely], if we dont't know it in project
resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids

  tags = var.tags
}
