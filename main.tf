provider "google" {
     project = "plucky-courier-429308-h9"
     region = "us-east1"  

}

variable "bucketname" {
    type = string
  
}
variable "location" {
    type = string
  
}
variable "force_destroy" {
    type = string
  
}

resource "google_storage_bucket" "gcs" {
    name = var.bucketname
    location = var.location
    force_destroy = var.force_destroy
 }

 

