resource "digitalocean_droplet" "web" {
    count = var.countDroplets
    image = var.dropletImageOS
    name = "${var.dropletSufixName}-${count.index}"
    region = var.dropletRegion
    size = var.dropletHardwareConfig

    ssh_keys = [
        data.digitalocean_ssh_key.terraform-ci.id
    ]

    provisioner "remote-exec" {
        inline = [
            "sudo apt update", 
            "sudo apt install software-properties-common -y",
            "sudo add-apt-repository ppa:ondrej/php -y",
            "sudo sh -c echo 'deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main' > /etc/apt/sources.list.d/pgdg.list",
            "wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -",
            "echo Done!"]

        connection {
            host    = self.ipv4_address
            type    = "ssh"
            user    = "root"
            private_key = file(var.pvtkey)
        }
    }

    provisioner "local-exec" {
        command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u root -i '${self.ipv4_address},' --private-key ${var.pvtkey} -e 'pub_key=${var.pubkey} php_version=${var.phpVersion}' ansible/playbooks/preconfig-server.yml"
    }
}

output "droplet_ip_addresses" {
    value = {
        for droplet in digitalocean_droplet.web:
        droplet.name => droplet.ipv4_address
    }
}

