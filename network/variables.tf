variable region {
    type = string
  
}


variable vpc_cidr_module {
    type = string
    default = "10.0.0.0/16"
  
}


variable public_subnet_1_module {
    type = string
    default = "10.0.1.0/24"
  
}

variable public_subnet_2_module {
    type = string
    default = "10.0.2.0/24"
  
}

variable private_subnet_1_module {
    type = string
    default = "10.0.3.0/24"
  
}

variable private_subnet_2_module {
    type = string
    default = "10.0.4.0/24"
}