variable "dms_endpoints" {
  description = <<EOT
Map of dms_endpoints, attributes below
Required:
    - endpoint_id
    - endpoint_type
    - engine_name
Optional:
    - certificate_arn
    - database_name
    - extra_connection_attributes
    - kms_key_arn
    - password
    - pause_replication_tasks
    - port
    - region
    - secrets_manager_access_role_arn
    - secrets_manager_arn
    - server_name
    - service_access_role
    - ssl_mode
    - tags
    - tags_all
    - username
    - elasticsearch_settings (block):
        - endpoint_uri (required)
        - error_retry_duration (optional)
        - full_load_error_percentage (optional)
        - service_access_role_arn (required)
        - use_new_mapping_type (optional)
    - kafka_settings (block):
        - broker (required)
        - include_control_details (optional)
        - include_null_and_empty (optional)
        - include_partition_value (optional)
        - include_table_alter_operations (optional)
        - include_transaction_details (optional)
        - message_format (optional)
        - message_max_bytes (optional)
        - no_hex_prefix (optional)
        - partition_include_schema_table (optional)
        - sasl_mechanism (optional)
        - sasl_password (optional)
        - sasl_username (optional)
        - security_protocol (optional)
        - ssl_ca_certificate_arn (optional)
        - ssl_client_certificate_arn (optional)
        - ssl_client_key_arn (optional)
        - ssl_client_key_password (optional)
        - topic (optional)
    - kinesis_settings (block):
        - include_control_details (optional)
        - include_null_and_empty (optional)
        - include_partition_value (optional)
        - include_table_alter_operations (optional)
        - include_transaction_details (optional)
        - message_format (optional)
        - partition_include_schema_table (optional)
        - service_access_role_arn (optional)
        - stream_arn (optional)
        - use_large_integer_value (optional)
    - mongodb_settings (block):
        - auth_mechanism (optional)
        - auth_source (optional)
        - auth_type (optional)
        - docs_to_investigate (optional)
        - extract_doc_id (optional)
        - nesting_level (optional)
        - use_update_lookup (optional)
    - mysql_settings (block):
        - after_connect_script (optional)
        - authentication_method (optional)
        - clean_source_metadata_on_mismatch (optional)
        - events_poll_interval (optional)
        - execute_timeout (optional)
        - max_file_size (optional)
        - parallel_load_threads (optional)
        - server_timezone (optional)
        - service_access_role_arn (optional)
        - target_db_type (optional)
    - oracle_settings (block):
        - access_alternate_directly (optional)
        - add_supplemental_logging (optional)
        - additional_archived_log_dest_id (optional)
        - allow_selected_nested_tables (optional)
        - archived_log_dest_id (optional)
        - archived_logs_only (optional)
        - asm_password (optional)
        - asm_server (optional)
        - asm_user (optional)
        - authentication_method (optional)
        - char_length_semantics (optional)
        - convert_timestamp_with_zone_to_utc (optional)
        - direct_path_no_log (optional)
        - direct_path_parallel_load (optional)
        - enable_homogenous_tablespace (optional)
        - extra_archived_log_dest_ids (optional)
        - fail_task_on_lob_truncation (optional)
        - number_datatype_scale (optional)
        - open_transaction_window (optional)
        - oracle_path_prefix (optional)
        - parallel_asm_read_threads (optional)
        - read_ahead_blocks (optional)
        - read_table_space_name (optional)
        - replace_path_prefix (optional)
        - retry_interval (optional)
        - secrets_manager_oracle_asm_access_role_arn (optional)
        - secrets_manager_oracle_asm_secret_id (optional)
        - security_db_encryption (optional)
        - security_db_encryption_name (optional)
        - spatial_data_option_to_geo_json_function_name (optional)
        - standby_delay_time (optional)
        - trim_space_in_char (optional)
        - use_alternate_folder_for_online (optional)
        - use_bfile (optional)
        - use_direct_path_full_load (optional)
        - use_logminer_reader (optional)
        - use_path_prefix (optional)
    - postgres_settings (block):
        - after_connect_script (optional)
        - authentication_method (optional)
        - babelfish_database_name (optional)
        - capture_ddls (optional)
        - database_mode (optional)
        - ddl_artifacts_schema (optional)
        - execute_timeout (optional)
        - fail_tasks_on_lob_truncation (optional)
        - heartbeat_enable (optional)
        - heartbeat_frequency (optional)
        - heartbeat_schema (optional)
        - map_boolean_as_boolean (optional)
        - map_jsonb_as_clob (optional)
        - map_long_varchar_as (optional)
        - max_file_size (optional)
        - plugin_name (optional)
        - service_access_role_arn (optional)
        - slot_name (optional)
    - redis_settings (block):
        - auth_password (optional)
        - auth_type (required)
        - auth_user_name (optional)
        - port (required)
        - server_name (required)
        - ssl_ca_certificate_arn (optional)
        - ssl_security_protocol (optional)
    - redshift_settings (block):
        - bucket_folder (optional)
        - bucket_name (optional)
        - encryption_mode (optional)
        - server_side_encryption_kms_key_id (optional)
        - service_access_role_arn (optional)
EOT

  type = map(object({
    endpoint_id                     = string
    endpoint_type                   = string
    engine_name                     = string
    tags                            = optional(map(string))
    ssl_mode                        = optional(string)
    service_access_role             = optional(string)
    server_name                     = optional(string)
    secrets_manager_arn             = optional(string)
    secrets_manager_access_role_arn = optional(string)
    region                          = optional(string)
    port                            = optional(number)
    pause_replication_tasks         = optional(bool)
    password                        = optional(string)
    kms_key_arn                     = optional(string)
    extra_connection_attributes     = optional(string)
    database_name                   = optional(string)
    certificate_arn                 = optional(string)
    tags_all                        = optional(map(string))
    username                        = optional(string)
    elasticsearch_settings = optional(object({
      endpoint_uri               = string
      error_retry_duration       = optional(number)
      full_load_error_percentage = optional(number)
      service_access_role_arn    = string
      use_new_mapping_type       = optional(bool)
    }))
    kafka_settings = optional(object({
      broker                         = string
      include_control_details        = optional(bool)
      include_null_and_empty         = optional(bool)
      include_partition_value        = optional(bool)
      include_table_alter_operations = optional(bool)
      include_transaction_details    = optional(bool)
      message_format                 = optional(string)
      message_max_bytes              = optional(number)
      no_hex_prefix                  = optional(bool)
      partition_include_schema_table = optional(bool)
      sasl_mechanism                 = optional(string)
      sasl_password                  = optional(string)
      sasl_username                  = optional(string)
      security_protocol              = optional(string)
      ssl_ca_certificate_arn         = optional(string)
      ssl_client_certificate_arn     = optional(string)
      ssl_client_key_arn             = optional(string)
      ssl_client_key_password        = optional(string)
      topic                          = optional(string)
    }))
    kinesis_settings = optional(object({
      include_control_details        = optional(bool)
      include_null_and_empty         = optional(bool)
      include_partition_value        = optional(bool)
      include_table_alter_operations = optional(bool)
      include_transaction_details    = optional(bool)
      message_format                 = optional(string)
      partition_include_schema_table = optional(bool)
      service_access_role_arn        = optional(string)
      stream_arn                     = optional(string)
      use_large_integer_value        = optional(bool)
    }))
    mongodb_settings = optional(object({
      auth_mechanism      = optional(string)
      auth_source         = optional(string)
      auth_type           = optional(string)
      docs_to_investigate = optional(string)
      extract_doc_id      = optional(string)
      nesting_level       = optional(string)
      use_update_lookup   = optional(bool)
    }))
    mysql_settings = optional(object({
      after_connect_script              = optional(string)
      authentication_method             = optional(string)
      clean_source_metadata_on_mismatch = optional(bool)
      events_poll_interval              = optional(number)
      execute_timeout                   = optional(number)
      max_file_size                     = optional(number)
      parallel_load_threads             = optional(number)
      server_timezone                   = optional(string)
      service_access_role_arn           = optional(string)
      target_db_type                    = optional(string)
    }))
    oracle_settings = optional(object({
      access_alternate_directly                     = optional(bool)
      add_supplemental_logging                      = optional(bool)
      additional_archived_log_dest_id               = optional(number)
      allow_selected_nested_tables                  = optional(bool)
      archived_log_dest_id                          = optional(number)
      archived_logs_only                            = optional(bool)
      asm_password                                  = optional(string)
      asm_server                                    = optional(string)
      asm_user                                      = optional(string)
      authentication_method                         = optional(string)
      char_length_semantics                         = optional(string)
      convert_timestamp_with_zone_to_utc            = optional(bool)
      direct_path_no_log                            = optional(bool)
      direct_path_parallel_load                     = optional(bool)
      enable_homogenous_tablespace                  = optional(bool)
      extra_archived_log_dest_ids                   = optional(list(number))
      fail_task_on_lob_truncation                   = optional(bool)
      number_datatype_scale                         = optional(number)
      open_transaction_window                       = optional(number)
      oracle_path_prefix                            = optional(string)
      parallel_asm_read_threads                     = optional(number)
      read_ahead_blocks                             = optional(number)
      read_table_space_name                         = optional(bool)
      replace_path_prefix                           = optional(bool)
      retry_interval                                = optional(number)
      secrets_manager_oracle_asm_access_role_arn    = optional(string)
      secrets_manager_oracle_asm_secret_id          = optional(string)
      security_db_encryption                        = optional(string)
      security_db_encryption_name                   = optional(string)
      spatial_data_option_to_geo_json_function_name = optional(string)
      standby_delay_time                            = optional(number)
      trim_space_in_char                            = optional(bool)
      use_alternate_folder_for_online               = optional(bool)
      use_bfile                                     = optional(bool)
      use_direct_path_full_load                     = optional(bool)
      use_logminer_reader                           = optional(bool)
      use_path_prefix                               = optional(string)
    }))
    postgres_settings = optional(object({
      after_connect_script         = optional(string)
      authentication_method        = optional(string)
      babelfish_database_name      = optional(string)
      capture_ddls                 = optional(bool)
      database_mode                = optional(string)
      ddl_artifacts_schema         = optional(string)
      execute_timeout              = optional(number)
      fail_tasks_on_lob_truncation = optional(bool)
      heartbeat_enable             = optional(bool)
      heartbeat_frequency          = optional(number)
      heartbeat_schema             = optional(string)
      map_boolean_as_boolean       = optional(bool)
      map_jsonb_as_clob            = optional(bool)
      map_long_varchar_as          = optional(string)
      max_file_size                = optional(number)
      plugin_name                  = optional(string)
      service_access_role_arn      = optional(string)
      slot_name                    = optional(string)
    }))
    redis_settings = optional(object({
      auth_password          = optional(string)
      auth_type              = string
      auth_user_name         = optional(string)
      port                   = number
      server_name            = string
      ssl_ca_certificate_arn = optional(string)
      ssl_security_protocol  = optional(string)
    }))
    redshift_settings = optional(object({
      bucket_folder                     = optional(string)
      bucket_name                       = optional(string)
      encryption_mode                   = optional(string)
      server_side_encryption_kms_key_id = optional(string)
      service_access_role_arn           = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dms_endpoints : (
        v.elasticsearch_settings == null || (v.elasticsearch_settings.error_retry_duration == null || (v.elasticsearch_settings.error_retry_duration >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_endpoints : (
        v.elasticsearch_settings == null || (v.elasticsearch_settings.full_load_error_percentage == null || (v.elasticsearch_settings.full_load_error_percentage >= 0 && v.elasticsearch_settings.full_load_error_percentage <= 100))
      )
    ])
    error_message = "must be between 0 and 100"
  }
  # Note: 39 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

