variable "default_region" {
    type            = object({
        name        = string
        region      = string
    })
    default         = {
        name        = "from-tf"
        region      = "ap-south-2"
    }
}

variable "network_details" {
    type            = object({
        name        = string
        cidr_block  = string
        tags        = list(string)
    })
    default         = {
        name        = "tf-vnet"
        cidr_block  = "10.10.0.0/16"
        tags        = [ "web", "app" ]
    }
}
