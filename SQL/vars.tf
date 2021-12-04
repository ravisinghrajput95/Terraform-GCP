variable "project" {
  type        = string
  description = "Project to operate in"
  default     = "vibrant-arcana-333008"
}

variable "region" {
  type        = string
  description = "Region where our resources will be deployed"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "Zone for our project"
  default     = "us-central1-a"
}

variable "postgresql_instance_name_replica" {
  type    = string
  default = "vibrant-arcana-sqldb-instance-replica"
}

variable "postgresql_instance_name" {
  type    = string
  default = "vibrant-arcana-sqldb-instance"
}

variable "tier" {
  type    = string
  default = "db-f1-micro"
}

variable "postgresql_user" {
  type    = string
  default = "devops"
}

variable "postgresql_password" {
  type    = string
  default = "devops$12"
}

variable "postgresql_version" {
  type    = string
  default = "POSTGRES_11"
}

variable "update_track" {
  type    = string
  default = "stable"
}

variable "availability_type" {
  type    = string
  default = "REGIONAL"
}
