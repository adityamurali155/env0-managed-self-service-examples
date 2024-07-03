data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
resource "aws_instance" "tg-example" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  subnet_id = data.aws_subnets.default.ids[0]

  tags = {
    Name = "TerragruntExampleEC2"
  }

}

output "instance_id" {
  value = aws_instance.tg-example.id
}
