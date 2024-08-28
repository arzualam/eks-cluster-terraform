resource "aws_internate_gateway" "myigw" {
   vpc_id = aws_vpc.myvpc.id

   tags = {
    Name = "myigw"
   }
}

