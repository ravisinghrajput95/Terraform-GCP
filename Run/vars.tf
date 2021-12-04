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
  description = "location for our project"
  default     = "us-west1"
}

variable "service" {
  type        = string
  description = "Service name for our project"
  default     = "app-service"
}

variable "image" {
  type        = string
  description = "Service name for our project"
  default     = "gcr.io/google-samples/hello-app:1.0"
}

variable "revision-green" {
  type    = string
  default = "app-service-green"

}

variable "revision-blue" {
  type    = string
  default = "app-service-blue"

}