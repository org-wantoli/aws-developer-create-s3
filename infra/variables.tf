
variable "bucket_name" {
  description = "Globally unique name for the S3 bucket."
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g. production, staging, development)."
  type        = string
  default     = "production"
}

variable "force_destroy" {
  description = "Allow bucket deletion even when it contains objects."
  type        = bool
  default     = false
}

variable "accountId" {
  description = "account id to deploy infra as a code"
  type        = string
}

variable "versioning" {
  description = "(opcional) Variavel que habilita/desabilita versionamento"
  type = string
  default = "Disabled"

  validation {
    condition = contains(["Enabled", "Disabled", "Suspended"], var.versioning)
    error_message = "Erro ao configurar 'versioning'. Os dados aceitos são: Enabled, Disabled, Suspended"
  }
  
}