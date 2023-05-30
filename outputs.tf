output "ami_id" {
  value       = var.enabled ? join("", aws_ami_copy.default.*.id) : ""
  description = "ID of copied AMI"
}