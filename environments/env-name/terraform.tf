provider "google" {
  credentials = file("service_account.json")
  project     = "${var.project}"
  region      = "${var.region}"
  version = "3.1"
}
provider "azurerm" {
  version = "1.35"
}
provider "gitlab" {
  base_url = var.gitlab_url
  token    = var.gitlab_token 
  version  = "2.10.0"
}
terraform{
  backend "gcs"{
    prefix = "buckectpath"
    credentials = "service_account.json"
    bucket      = "bucketname"
  }
}