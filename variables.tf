variable "walrus_url" {
  type        = string
  description = "URL of the Walrus server"
  default     = "https://localhost"
}

variable "walrus_token" {
  type        = string
  description = "API Token for authenticating with the Walrus server"
}

variable "arch" {
  type        = string
  description = "The underlying architecture on which the walrus server runs"
  default     = "amd64"
}

variable "os" {
  type        = string
  description = "The underlying OS on which the walrus server runs"
  default     = "linux"
}

variable "k8s_connector_name" {
  type        = string
  description = "Name of the Kubernetes connector"
}

variable "env_type" {
  type        = string
  description = "The environment type of the Kubernetes connector"
  default     = "development"
}

variable "kubeconfig" {
  type        = string
  description = "The content of Kubernetes kubeconfig"
}

variable "executed_repeatedly" {
  type        = bool
  description = "Allow command to be executed repeatedly."
  default     = true
}