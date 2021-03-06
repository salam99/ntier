output "nat.ip" {
  value = "${aws_instance.nat.public_ip}"
}

output "app.0.ip" {
  value = "${aws_instance.app.0.private_ip}"
}

output "app.1.ip" {
  value = "${aws_instance.app.1.private_ip}"
}

output "appservers" {
    value = "${join(",", aws_instance.app.*.private_ip)}"
}

output "elb.hostname" {
  value = "${aws_elb.app.dns_name}"
}
