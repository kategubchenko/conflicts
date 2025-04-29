resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Hello from branch B'"
  }

  triggers = {
    always_run = uuid()
  }
}
