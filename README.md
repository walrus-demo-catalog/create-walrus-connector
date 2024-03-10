## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.local](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arch"></a> [arch](#input\_arch) | The underlying architecture on which the walrus server runs | `string` | `"amd64"` | no |
| <a name="input_env_type"></a> [env\_type](#input\_env\_type) | The environment type of the Kubernetes connector | `string` | `"development"` | no |
| <a name="input_executed_repeatedly"></a> [executed\_repeatedly](#input\_executed\_repeatedly) | Allow command to be executed repeatedly. | `bool` | `true` | no |
| <a name="input_k8s_connector_name"></a> [k8s\_connector\_name](#input\_k8s\_connector\_name) | Name of the Kubernetes connector | `string` | n/a | yes |
| <a name="input_kubeconfig"></a> [kubeconfig](#input\_kubeconfig) | The content of Kubernetes kubeconfig | `string` | n/a | yes |
| <a name="input_os"></a> [os](#input\_os) | The underlying OS on which the walrus server runs | `string` | `"linux"` | no |
| <a name="input_walrus_token"></a> [walrus\_token](#input\_walrus\_token) | API Token for authenticating with the Walrus server | `string` | n/a | yes |
| <a name="input_walrus_url"></a> [walrus\_url](#input\_walrus\_url) | URL of the Walrus server | `string` | `"https://localhost"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arch"></a> [arch](#output\_arch) | The underlying architecture on which the walrus server runs |
| <a name="output_env_type"></a> [env\_type](#output\_env\_type) | The environment type of the Kubernetes connector |
| <a name="output_k8s_connector_name"></a> [k8s\_connector\_name](#output\_k8s\_connector\_name) | Name of the Kubernetes connector |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | The content of Kubernetes kubeconfig |
| <a name="output_os"></a> [os](#output\_os) | The underlying OS on which the walrus server runs |
| <a name="output_walrus_token"></a> [walrus\_token](#output\_walrus\_token) | API Token for authenticating with the Walrus server |
| <a name="output_walrus_url"></a> [walrus\_url](#output\_walrus\_url) | URL of the Walrus server |
