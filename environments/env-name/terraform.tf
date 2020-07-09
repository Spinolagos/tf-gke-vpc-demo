provider "google" {
  credentials = file("service_account.json")
  project     = "${var.project}"
  region      = "${var.region}"
  version     = "3.1"
}
terraform{
  backend "gcs"{
    prefix      = "bucketpath"
    credentials = "service_account.json"
    bucket      = "bucketname"
  }
}