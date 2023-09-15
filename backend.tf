terraform {
  backend "s3" {
    bucket = "h.web1"
    key    = "assignment.tfstate"
    region = "ap-south-1"
  }
}