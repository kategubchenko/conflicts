resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Hello from branch A-upd'"
  }

  triggers = {
    always_run = timestamp()
  }
}
