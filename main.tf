resource "aws_instance" "Res1" {
  count         = 2
  ami           = var.ami[count.index]
  instance_type = var.instance_type[count.index]
  subnet_id     = "subnet-0962069167a59d185"
  tags = {
    Name   = var.instance_name[count.index]
    owner  = var.owner[0]
  }
  volume_tags = {
    Name  = var.instance_name[count.index]
    owner = var.owner[0]
  }
}
resource "aws_s3_bucket" "Res2" {
  for_each = toset(var.set01)
  bucket   = each.value
  tags = {
    Name        = each.value
    Environment = "Dev"
    owner       = "himanshi.soni@cloudeq.com"
  }

}
