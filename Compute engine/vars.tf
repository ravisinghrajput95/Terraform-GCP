variable "project" {
  type        = string
  description = "Project to operate in"
  default     = "vibrant-arcana-333008"
}

variable "region" {
  type        = string
  description = "Region where our resources will be deployed"
  default     = "us-west3"
}

variable "zone" {
  type        = string
  description = "Zone for our project"
  default     = "us-west3-a"
}

variable "location" {
  type        = string
  description = "location for our instance"
  default     = "US"
}

variable "instance-name" {
  type        = string
  description = "Name for our VM instance"
  default     = "tooplate-webserver"
}

variable "machine-type" {
  type        = string
  description = "Machine type for our VM instance"
  default     = "e2-medium"
}

variable "instance-tag" {
  type        = string
  description = "tag for our VM instance"
  default     = "dev"
}

variable "network-name" {
  type        = string
  description = "network for our VM instance"
  default     = "default"
}

variable "address-name" {
  type        = string
  description = "address name"
  default     = "vm-public-address"
}

variable "vm-user" {
  type        = string
  description = "user for remote-exec to the VM instance"
  default     = "terraform"
}

variable "path_to_pvt_key" {
  type        = string
  description = "path to private key"
  default     = "~/.ssh/id_ed25519"
}

variable "path_to_public_key" {
  type        = string
  description = "path to public key"
  default     = "~/.ssh/id_ed25519.pub"
}

variable "tag_name" {
  type        = string
  description = "tag for we server"
  default     = "web-server"
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

variable "service-account-email" {
  type        = string
  description = "service acccount email id"
  default     = "terraform-gcp@vibrant-arcana-333008.iam.gserviceaccount.com"
}
