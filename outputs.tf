output "dms_endpoints_id" {
  description = "Map of id values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dms_endpoints_certificate_arn" {
  description = "Map of certificate_arn values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.certificate_arn if v.certificate_arn != null && length(v.certificate_arn) > 0 }
}
output "dms_endpoints_database_name" {
  description = "Map of database_name values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "dms_endpoints_elasticsearch_settings" {
  description = "Map of elasticsearch_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.elasticsearch_settings) if v.elasticsearch_settings != null && length(v.elasticsearch_settings) > 0 }
}
output "dms_endpoints_endpoint_arn" {
  description = "Map of endpoint_arn values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.endpoint_arn if v.endpoint_arn != null && length(v.endpoint_arn) > 0 }
}
output "dms_endpoints_endpoint_id" {
  description = "Map of endpoint_id values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.endpoint_id if v.endpoint_id != null && length(v.endpoint_id) > 0 }
}
output "dms_endpoints_endpoint_type" {
  description = "Map of endpoint_type values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.endpoint_type if v.endpoint_type != null && length(v.endpoint_type) > 0 }
}
output "dms_endpoints_engine_name" {
  description = "Map of engine_name values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.engine_name if v.engine_name != null && length(v.engine_name) > 0 }
}
output "dms_endpoints_extra_connection_attributes" {
  description = "Map of extra_connection_attributes values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.extra_connection_attributes if v.extra_connection_attributes != null && length(v.extra_connection_attributes) > 0 }
}
output "dms_endpoints_kafka_settings" {
  description = "Map of kafka_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.kafka_settings) if v.kafka_settings != null && length(v.kafka_settings) > 0 }
  sensitive   = true
}
output "dms_endpoints_kinesis_settings" {
  description = "Map of kinesis_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.kinesis_settings) if v.kinesis_settings != null && length(v.kinesis_settings) > 0 }
}
output "dms_endpoints_kms_key_arn" {
  description = "Map of kms_key_arn values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "dms_endpoints_mongodb_settings" {
  description = "Map of mongodb_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.mongodb_settings) if v.mongodb_settings != null && length(v.mongodb_settings) > 0 }
}
output "dms_endpoints_mysql_settings" {
  description = "Map of mysql_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.mysql_settings) if v.mysql_settings != null && length(v.mysql_settings) > 0 }
}
output "dms_endpoints_oracle_settings" {
  description = "Map of oracle_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.oracle_settings) if v.oracle_settings != null && length(v.oracle_settings) > 0 }
  sensitive   = true
}
output "dms_endpoints_password" {
  description = "Map of password values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "dms_endpoints_pause_replication_tasks" {
  description = "Map of pause_replication_tasks values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.pause_replication_tasks if v.pause_replication_tasks != null }
}
output "dms_endpoints_port" {
  description = "Map of port values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.port if v.port != null }
}
output "dms_endpoints_postgres_settings" {
  description = "Map of postgres_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.postgres_settings) if v.postgres_settings != null && length(v.postgres_settings) > 0 }
}
output "dms_endpoints_redis_settings" {
  description = "Map of redis_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.redis_settings) if v.redis_settings != null && length(v.redis_settings) > 0 }
  sensitive   = true
}
output "dms_endpoints_redshift_settings" {
  description = "Map of redshift_settings values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => one(v.redshift_settings) if v.redshift_settings != null && length(v.redshift_settings) > 0 }
}
output "dms_endpoints_region" {
  description = "Map of region values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dms_endpoints_secrets_manager_access_role_arn" {
  description = "Map of secrets_manager_access_role_arn values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.secrets_manager_access_role_arn if v.secrets_manager_access_role_arn != null && length(v.secrets_manager_access_role_arn) > 0 }
}
output "dms_endpoints_secrets_manager_arn" {
  description = "Map of secrets_manager_arn values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.secrets_manager_arn if v.secrets_manager_arn != null && length(v.secrets_manager_arn) > 0 }
}
output "dms_endpoints_server_name" {
  description = "Map of server_name values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.server_name if v.server_name != null && length(v.server_name) > 0 }
}
output "dms_endpoints_service_access_role" {
  description = "Map of service_access_role values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.service_access_role if v.service_access_role != null && length(v.service_access_role) > 0 }
}
output "dms_endpoints_ssl_mode" {
  description = "Map of ssl_mode values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.ssl_mode if v.ssl_mode != null && length(v.ssl_mode) > 0 }
}
output "dms_endpoints_tags" {
  description = "Map of tags values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dms_endpoints_tags_all" {
  description = "Map of tags_all values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "dms_endpoints_username" {
  description = "Map of username values across all dms_endpoints, keyed the same as var.dms_endpoints"
  value       = { for k, v in aws_dms_endpoint.dms_endpoints : k => v.username if v.username != null && length(v.username) > 0 }
}

