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

variable "location" {
  type        = string
  default     = "US"
}

variable "friendly_name" {
  type        = string
  default     = "visitors"
}

variable "dataset_id" {
  type        = string
  default     = "vibrant_arcana"
}

variable "env" {
  type        = string
  default     = "devops"
}

variable "table_id" {
  type        = string
  default     = "tenure-sales"
}

variable "partitioning" {
  type        = string
  default     = "DAY"
}
