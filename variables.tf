variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'"
}

variable "client" {
  type        = string
  default     = ""
  description = "client, e.g. 'ifunky'"
}

variable "stage" {
  type        = string
  default     = ""
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "source_ami_region" {
  type        = string
  description = "Source AMI region"
}

variable "source_ami_name" {
  type        = string
  description = "Unique name of AMI to copy from source to target region"
}

variable "source_ami_id" {
  type        = string
  description = "Unique ID of AMI to copy from source to target region"
}

variable "account_ids_for_sharing" {
  type        = list(string)
  description = "List of account IDs to allow launch permissions for"
  default     = []
}
