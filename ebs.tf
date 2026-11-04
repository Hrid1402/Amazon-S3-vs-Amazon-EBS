resource "aws_ebs_volume" "demo_ebs" {
  availability_zone = data.aws_subnet.selected.availability_zone

  size      = var.ebs_size
  type      = "gp3"
  encrypted = true

  iops       = 3000
  throughput = 125

  multi_attach_enabled = false

  tags = {
    Name = "demo-ebs"
  }
}

resource "aws_volume_attachment" "demo_ebs" {
  device_name = "/dev/sdf"

  volume_id   = aws_ebs_volume.demo_ebs.id
  instance_id = aws_instance.demo_ec2.id

  force_detach = false
}