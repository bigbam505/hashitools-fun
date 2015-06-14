listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
}

backend "consul" {
  address = "consul.bmontague.com:8500"
  path = "vault"
}

disable_mlock = true

