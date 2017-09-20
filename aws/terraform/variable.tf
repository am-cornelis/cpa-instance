variable "name" {
  default     = "cloud-portal"
  description = "The name of the deployment"
}

variable "instances" {
  default     = 1
  description = "Number of instances to deploy"
}

variable "disk_image" {
  default     = "ami-bb9a6bc2"
  description = "OS AMI image name to use for node installation"
}

variable "machine_type" {
  default     = "t2.micro"
  description = "Machine type (flavor)"
}

variable "volume_type" {
  default = "standard"
}

variable "region" {
  type    = "string"
  default = "eu-west-1"
}

variable "access_key" {}
variable "secret_key" {}

variable "profile_public_key" {
  description = "The ssh public key to inject in the host"
}

### Network

variable "vpc_cidr_block" {
  description = "The cidr block of the referenced VPC"
}

variable "vpc_id" {
  description = "The id of the referenced VPC"
}

variable "subnet_cidr_block" {
  description = "The cidr block of the subnet, it has to be a subset of the cidr block of the referenced VPC and has not conflict with other subnet eventually defined."
}
