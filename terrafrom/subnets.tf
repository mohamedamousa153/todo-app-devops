resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.cidr_private-us-east-1a
  availability_zone = "us-east-1a"

  tags = {
    "Name"                            = "private-us-east-1a"
    "kubernetes.io/role/internal-elb" = var.subnet_kubernetes_io_role_internal-elb
    "kubernetes.io/cluster/demo"      = var.subnet_kubernetes_io_cluster_demo
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.cidr_private-us-east-1b
  availability_zone = "us-east-1b"

  tags = {
    "Name"                            = "private-us-east-1b"
    "kubernetes.io/role/internal-elb" =  var.subnet_kubernetes_io_role_internal-elb
    "kubernetes.io/cluster/demo"      = var.subnet_kubernetes_io_cluster_demo
  }
}

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.cidr_public-us-east-1a
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-us-east-1a"
    "kubernetes.io/role/elb"     =  var.subnet_kubernetes_io_role_internal-elb
    "kubernetes.io/cluster/demo" = var.subnet_kubernetes_io_cluster_demo
  }
}

resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.cidr_public-us-east-1b 
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-us-east-1b"
    "kubernetes.io/role/elb"     =  var.subnet_kubernetes_io_role_internal-elb
    "kubernetes.io/cluster/demo" = var.subnet_kubernetes_io_cluster_demo
  }
}