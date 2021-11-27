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
  description = "location for our GCS bucket"
  default     = "US"
}

variable "bucket" {
  type        = string
  description = "Name for our GCS bucket"
  default     = "vibrant-arcana-bucket-000001"
}