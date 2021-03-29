variable "dotoken" {
    description = "Personal access token defined in your DO account"
}

variable "pvtkey" {
    description = "ssh private key with path"
}

variable "pubkey" {
    description = "ssh public key with path"
}

variable "countDroplets" {
    default = 1
    description = "number os droplets to be built"
}

variable "dropletImageOS" {
    default = "ubuntu-20-04-x64"
    description = "OS Image chosen for the droplet(s)"
}

variable "dropletSufixName" {
    default = "web"
    description = "sufix for droplets name"
}

variable "dropletRegion" {
    default = "nyc1"
    description = "DO Region where your droplet will be built"
}

variable "dropletHardwareConfig" {
    default = "s-1vcpu-1gb"
    description = "Hardware specs for the droplet(s)"
}

variable "phpVersion" {
    default = "8.0"
    description = "PHP version for package install and configuration"
}
