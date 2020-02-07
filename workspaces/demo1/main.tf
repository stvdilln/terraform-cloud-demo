
resource null_resource nothing2 {
    provisioner "local-exec" {
    command = "echo ${var.secret_bundle_1.secret1} ${var.secret_bundle_1.secret2}"
  }
}