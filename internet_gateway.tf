resource "aws_internet_gateway" "lwIGW" {
  vpc_id = aws_vpc.lw_vpc.id  
  tags = {
    Name = "LW Internet Gateway TF"
  }
}
