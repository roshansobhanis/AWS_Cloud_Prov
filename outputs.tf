output "instance_ami" {
  value = aws_instance.ubuntu1.ami
}

output "instance_arn" {
  value = aws_instance.ubuntu1.arn
}
