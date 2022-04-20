resource "aws_redshift_parameter_group" "this" {
  # if we were passed a value for parameter_group_name, don't bother creating a parameter group
  count  = 2
  name   = "krasteki-${count.index}"
  family = "redshift-1.0"

  parameter {
    name  = "wlm_json_configuration"
    value = var.wlm_json_configuration
  }

  parameter {
    # ref: https://docs.aws.amazon.com/redshift/latest/mgmt/connecting-ssl-support.html
    name  = "require_ssl"
    value = var.require_ssl
  }

  parameter {
    name  = "use_fips_ssl"
    value = var.use_fips_ssl
  }

  parameter {
    # ref: https://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html
    name  = "enable_user_activity_logging"
    value = var.enable_user_activity_logging
  }

  parameter {
    # ref: https://docs.aws.amazon.com/redshift/latest/dg/concurrency-scaling.html
    name  = "max_concurrency_scaling_clusters"
    value = var.max_concurrency_scaling_clusters
  }

  parameter {
    # ref: https://docs.aws.amazon.com/redshift/latest/dg/r_enable_case_sensitive_identifier.html
    name  = "enable_case_sensitive_identifier"
    value = var.enable_case_sensitive_identifier
  }

  tags = var.tags
}