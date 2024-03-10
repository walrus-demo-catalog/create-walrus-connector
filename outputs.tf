output "walrus_url" {
  value       = var.walrus_url
  description = "URL of the Walrus server"
}

output "walrus_token" {
  value       = var.walrus_token
  description = "API Token for authenticating with the Walrus server"
  sensitive   = true
}

output "arch" {
  value       = var.arch
  description = "The underlying architecture on which the walrus server runs"
}

output "os" {
  value       = var.os
  description = "The underlying OS on which the walrus server runs"
}

output "k8s_connector_name" {
  value       = var.k8s_connector_name
  description = "Name of the Kubernetes connector"
}

output "env_type" {
  value       = var.env_type
  description = "The environment type of the Kubernetes connector"
}


output "kubeconfig" {
  value       = var.kubeconfig
  description = "The content of Kubernetes kubeconfig"
  sensitive   = true
}
