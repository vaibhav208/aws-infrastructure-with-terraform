resource "aws_route_table" "LWRoutingTableInternet" {
  vpc_id = aws_vpc.lw_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lwIGW.id
  }

  tags = {
    Name = "LW Routing Table Internet TF"
  }
}