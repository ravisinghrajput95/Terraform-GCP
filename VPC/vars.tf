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

variable "vpc_network_auto" {
  type        = string
  description = "Auto VPC name for our project"
  default     = "auto-network"
}

variable "vpc_network_custom" {
  type        = string
  description = "Custom VPC name for our project"
  default     = "custom-network"
}

variable "subnet_name" {
  type        = string
  description = "Custom VPC subnetwork for our project"
  default     = "custom-network-subnet"
}

variable "ip_cidr" {
  type        = string
  description = "Ip cidr range for our subnet"
  default     = "10.1.0.0/24"
}

variable "firewall_rule_name" {
  type        = string
  description = "Firewall rules for oour custom VPC subnet"
  default     = "custom-vpc-firewall-rule"
}