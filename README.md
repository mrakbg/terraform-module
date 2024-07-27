These all are the modules for terraform to create resources in GCP.

You can use them by just creating main.tf file as :

-----------------------
provider "google" {

  project = "prjectid" #enter project ID
  region  = "region" #enter region
  }
module "ec2" {
  source = "https://github.com/mrakbg/terraform-module.git//foldername" #enter link of module repo and foldername
  image = "debian-cloud/debian-11" #enter whatever variables are required.
}

----------------------------------


add prvoider and module source this repo then add variables.

That's it
