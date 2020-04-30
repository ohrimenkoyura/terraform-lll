//provider "google" {
//    credentials = "${file("../account.json") }"
//    project = "thrashingcorecode"
//    region = "us-west1"
//}

provider "aws" {
  region = "us-east-2"
}

//provider "azurerm" {
//    subscription_id = "${var.subscrition_id}"
//    client_id = "${var.client_id}"
//    client_secret = "${var.subscrition_secret}"
//    tenant_id = "${var.tenant_id}"
//}

//variable sudscription_id{}
//variable client_id{}
//variable client_secret{}
//variable tenant_id{}