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
    description = "number os droplets to be built"
}

variable "dropletSufixName" {
    description = "sufix for droplets name"
}
