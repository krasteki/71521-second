variable "cluster_parameter_group" {
  description = "Parameter group, depends on DB engine used"
  type        = string
  default     = "redshift-1.0"
}



variable "wlm_json_configuration" {
  description = "Configuration bits for WLM json. see https://docs.aws.amazon.com/redshift/latest/mgmt/workload-mgmt-config.html"
  type        = string
  default     = "[{\"query_concurrency\": 5}]"
}

variable "require_ssl" {
  description = "Require SSL to connect to this cluster"
  type        = string
  default     = "false"
}


variable "use_fips_ssl" {
  description = "Enable FIPS-compliant SSL mode only if your system is required to be FIPS compliant."
  type        = string
  default     = "false"
}

variable "enable_user_activity_logging" {
  description = "Enable logging of user activity. See https://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html"
  type        = string
  default     = "false"
}

variable "max_concurrency_scaling_clusters" {
  description = "(Optional) Max concurrency scaling clusters parameter (0 to 10)"
  type        = string
  default     = "1"
}

variable "enable_case_sensitive_identifier" {
  description = "(Optional) A configuration value that determines whether name identifiers of databases, tables, and columns are case sensitive."
  type        = bool
  default     = false
}


variable "parameter_group_name" {
  description = "The name of the parameter group to be associated with this cluster. If not specified new parameter group will be created."
  type        = string
  default     = ""
}
