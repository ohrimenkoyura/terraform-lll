//resource "google_compute_instance" "firstserver" {
//  name = "thefirstserver"
//  machine_type = "n1-standard-1"
//  zone = "us-west1-a"
//
//  boot_disk {
//    initialize_params {
//      image = "debian-cloud/debian-8"
//    }
//  }
//
//  network_interface {
//    subnetwork = "${google_compute_subnetwork.dev-subnet.name}"
//
//    access_config {
//    }
//  }
//
//  metadata {
//    foo = "bar"
//  }
//
//  service_account {
//    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
//  }
//}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name= "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "secondserver" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = {
    name = "identifiertag"
  }

  subnet_id = "${aws_subnet.subnet2.id} "
}