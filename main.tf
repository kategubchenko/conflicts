resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Hello from branch B upd'"
  }

  triggers = {
    always_run = uuid()
  }
}
