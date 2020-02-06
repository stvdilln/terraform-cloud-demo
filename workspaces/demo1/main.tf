output secrets {
    # this is not a sensitive item, so just output it
    value = "${var.testvalues.secret1} ${var.testvalues.secret2}"
}
resource null_resource nothing {
    provisioner "local-exec" {
    command = "echo ${var.testvalues.secret1}"
  }
}