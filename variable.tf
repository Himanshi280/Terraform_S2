variable "instance_name" {
  type        = list(string)
  description = "Instance Name "
}
variable "instance_type" {
  type        = list(string)
  description = "Instance type"
  default     = ["t2.micro", "t2.micro"]
}
variable "ami" {
  type        = list(string)
  description = " ami_id "
  default     = ["ami-02bb7d8191b50f4bb", "ami-0f5ee92e2d63afc18"]
}
variable "owner" {
  type        = list(string)
  description = "Instance Owner "
  default     = ["Himanshi"]
}
#for_each
variable "set01" {
  type        = set(string)
  description = "Set"
}