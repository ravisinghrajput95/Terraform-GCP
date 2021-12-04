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

variable "config" {
  type    = string
  default = "regional-europe-west1"
}

variable "display_name" {
  type    = string
  default = "arcana-instance"
}

variable "num_nodes" {
  type    = number
  default = 1
}

variable "name" {
  type    = string
  default = "arcana-database"
}
