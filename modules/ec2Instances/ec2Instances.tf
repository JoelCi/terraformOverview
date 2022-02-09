resource "aws_network_interface" "netIntEC2" {
  subnet_id = var.aws_subnet_id
  count     = var.numberOfEC2
  tags = {
    Environment = "${var.environment}"
  }
}

resource "aws_instance" "EC2" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.numberOfEC2

  network_interface {
    network_interface_id = element(aws_network_interface.netIntEC2.*.id, count.index)
    device_index         = 0
  }
  tags = {
    Environment = "${var.environment}"
    Name        = "${var.environment}-${var.type}-${count.index}-EC2"
  }
}

