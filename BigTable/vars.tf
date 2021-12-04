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

variable "name" {
  type    = string
  default = "vibrant-arcana"
}

variable "cluster_id" {
  type    = string
  default = "vibrant-arcana-cluster"
}

variable "num_nodes" {
  type    = number
  default = 2
}

variable "storage_type" {
  type    = string
  default = "HDD"
}

variable "table_name" {
  type    = string
  default = "demo-table"
}

variable "app_profile_id" {
  type    = string
  default = "vibrant-arcana"
}

