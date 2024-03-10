resource "null_resource" "local" {
  provisioner "local-exec" {
    command = templatefile("${path.module}/commands.tpl", {
      WALRUS_URL         = var.walrus_url
      WALRUS_TOKEN       = var.walrus_token
      ARCN               = var.arch
      OS                 = var.os
      K8S_CONNECTOR_NAME = var.k8s_connector_name
      ENV_TYPE           = var.env_type
      KUBECONFIG         = var.kubeconfig
    })
  }

  triggers = {
    always_run = var.executed_repeatedly == true ? timestamp() : null
  }
}
