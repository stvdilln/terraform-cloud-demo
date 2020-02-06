output secrets {
    # this is not a sensitive item, so just output it
    value = "${var.testvalues.secret1} ${var.testvalues.secret2}"
}
