resource "aws_eip" "mynat" {
   vpc = true

   tags = {
     Name = "mynat"
  }
}

resource "aws_nat_gateway" "mynat" {
   allocation_id = aws_eip.mynat.id
   subnet_id     = aws_subnet.public-us-east-1a.id

   tags = {
    Name = "mynat"
  }

   depends_on = [aws_internet_gateway.myigw]
}
