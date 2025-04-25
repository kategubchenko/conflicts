resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Hello from branch A'"
  }

  triggers = {
    always_run = timestamp()
  }
}
