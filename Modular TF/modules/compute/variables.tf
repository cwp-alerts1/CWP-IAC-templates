variable "ami_id" {
  default = "ami-830c94e3"
}

variable "type" {
  default = "t2.micro"
}

variable "cidr_blocks"{
  default = ["0.0.0.0/16"]
}

variable "gcp_name" {
 default = "test"
}

variable "machine_type" {
 default = "n1-standard-1"
}
variable "zone" {
 default = "us-central1-a"
}
