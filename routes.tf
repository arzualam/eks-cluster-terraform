resource "aws_route_table" "private" {
     vpc_id = aws_vpc.myvpc.id

     route = [
      {
        cidr_block                 = "0.0.0.0/0"
        nat_gateway_id             = "aws_nat_gateway.mynat.id
        carrier_gateway_id         =  ""
        destination_prefix_list_id =
        egress_only_gateway_id     = ""
        gateway_id                 = ""
        instance_id                = ""
        ipv6_cidr_block            = ""
        local_gateway_id           = ""
        network_interface_id       = ""
        transit_gateway_id         = ""
        vpc_endpoint_id            = ""
        vpc_peering_connection_id  = "" 
      },
    ]

    tags = {
     Name = "private"
    }  
}


resource "aws_route_table" "public" {
     vpc_id = aws_vpc.myvpc.id

     route = [
      {
        cidr_block                 = "0.0.0.0/0"
        nat_gateway_id             = "aws_nat_gateway.mynat.id
        carrier_gateway_id         =  ""
        destination_prefix_list_id = 
        egress_only_gateway_id     = ""
        gateway_id                 = ""
        instance_id                = ""
        ipv6_cidr_block            = ""
        local_gateway_id           = ""
        network_interface_id       = ""
        transit_gateway_id         = ""
        vpc_endpoint_id            = ""
        vpc_peering_connection_id  = ""
      },
    ]

    tags = {
     Name = "public"
    }
}


resource "aws_route_table_association" "private-us-east-1a" {
  subnet_id      = aws_subnet.private-us-east-1a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-us-east-1b" {
  subnet_id      = aws_subnet.private-us-east-1b.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "public-us-east-1a" {
  subnet_id      = aws_subnet.public-us-east-1a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-us-east-1b" {
  subnet_id      = aws_subnet.public-us-east-1b.id
  route_table_id = aws_route_table.public.id
}
