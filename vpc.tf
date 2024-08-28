resource "aws_vpc" "myvpc" {
  cidr_block= "10.0.0.o/16"

  tags = {
    Name = "myvpc"
  }
}
