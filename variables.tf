variable "database_version" {
  type        = string
  description = "The type and version of database to use."
  default     = "MYSQL_5_7"
  validation {
    error_message = "Please select a supported database type and version. See https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version ."
    condition     = contains(["MYSQL_5_6", "MYSQL_5_7", "MYSQL_8_0", "POSTGRES_9_6", "POSTGRES_10", "POSTGRES_11", "POSTGRES_12", "POSTGRES_13", "SQLSERVER_2017_STANDARD", "SQLSERVER_2017_ENTERPRISE", "SQLSERVER_2017_EXPRESS", "SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD", "SQLSERVER_2019_ENTERPRISE", "SQLSERVER_2019_EXPRESS", "SQLSERVER_2019_WEB"], var.database_version)
  }
}
