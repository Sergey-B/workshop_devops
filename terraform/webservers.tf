provider "digitalocean" {
  token = "${var.do_token}"
  version = "~> 1.1"
}

#resource "digitalocean_droplet" "web2" {
#  image  = "ubuntu-18-04-x64"
#  name   = "web-1"
#  region = "fra1"
#  size   = "s-1vcpu-1gb"
#  ssh_keys = [
#    "${digitalocean_ssh_key.sergey_b.fingerprint}"
#  ]
#}



