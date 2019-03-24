resource "digitalocean_ssh_key" "sergey_b" {
  name = "Sergey's workstation ssh public key"
  public_key = "${file("./files/sergey_b.pub")}"
}