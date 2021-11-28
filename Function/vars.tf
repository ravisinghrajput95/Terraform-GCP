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
variable "bucket_function" {
  type        = string
  description = "Name for our GCS bucket to store function"
  default     = "vibrant-arcana-bucket-2811"
}
variable "zip_file" {
  type        = string
  description = "archive for the code"
  default     = "index.zip"
}
variable "func_name" {
  type        = string
  description = "name of the function"
  default     = "first-function"
}
variable "runtime" {
  type        = string
  description = "runtime of the function"
  default     = "nodejs14"
}
variable "description-func" {
  type        = string
  description = "description of the function"
  default     = "This is my first function from terraform script."
}
variable "function_memory" {
  type        = number
  description = "memory of the function"
  default     = 128
}
variable "entrypoint" {
  type        = string
  description = "entrypint of the function"
  default     = "helloWorldtf"
}
variable "access_role" {
  type        = string
  description = "iam access role for the function"
  default     = "roles/cloudfunctions.invoker"
}
variable "users" {
  type    = string
  default = "allUsers"
}