resource "aws_instance" "webserver" {
  # creating webservers in each subnets using count.
  count           = length(var.subnets_cidr)
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = ["aws_security_group.public_subnet.id"]
  subnet_id       = element(aws_subnet.public_subnet.*.id, count.index)
  user_data       = file("install.sh")
}