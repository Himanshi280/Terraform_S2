output "InsOut" {
  description = "value of instanes"
  value       = [for i in aws_instance.Res1 : i.ami]
}
output "buckOut" {
  description = " value"
  value       = [for s in aws_s3_bucket.Res2 : s.id]
}