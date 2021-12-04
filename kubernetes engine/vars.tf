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

variable "cluster-name" {
  type        = string
  description = "Gke cluster name for our project"
  default     = "gke-vibrant-arcana-cluster"
}

variable "nodepool_name" {
  type        = string
  description = "Gke cluster node pool name for our project"
  default     = "gke-vibrant-arcana-cluster-node-pool"
}

variable "service_account_name" {
  type        = string
  description = "service-account-name for node pool name for our project"
  default     = "terraform-gcp@vibrant-arcana-333008.iam.gserviceaccount.com"
}

variable "env" {
  type        = string
  description = "environment name for our project"
  default     = "dev"
}

variable "tag1" {
  type    = string
  default = "env"
}

variable "tag2" {
  type    = string
  default = "dev"
}

variable "scopes" {
  type    = string
  default = "https://www.googleapis.com/auth/cloud-platform"
}

variable "horizontal_pod_autoscaling" {
  description = "Whether to enable the horizontal pod autoscaling addon"
  type        = bool
  default     = true
}

variable "http_load_balancing" {
  description = "Whether to enable the http (L7) load balancing addon"
  type        = bool
  default     = true
}

variable "min_node_count" {
  description = "Time window specified for daily maintenance operations in RFC3339 format"
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "Time window specified for daily maintenance operations in RFC3339 format"
  type        = number
  default     = 2
}

variable "enable_vertical_pod_autoscaling" {
  description = "Whether to enable Vertical Pod Autoscaling"
  type        = string
  default     = false
}

variable "enable_network_policy" {
  description = "Whether to enable Kubernetes NetworkPolicy on the master, which is required to be enabled to be used on Nodes."
  type        = bool
  default     = true
}

variable "enable_preemptible" {
  type    = bool
  default = true
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "auto_repair" {
  type    = string
  default = "true"
}

variable "auto_upgrade" {
  type    = string
  default = "true"
}

variable "disk_size_gb" {
  type    = string
  default = "30"
}

variable "disk_type" {
  type    = string
  default = "pd-standard"
}

variable "timeout_create" {
  type    = string
  default = "30m"
}

variable "timeout_update" {
  type    = string
  default = "30m"
}

variable "timeout_delete" {
  type    = string
  default = "30m"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "remove_default_node_pool" {
  type    = bool
  default = true
}