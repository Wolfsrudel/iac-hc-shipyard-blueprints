container "consul" {
  image   {
    name = "consul:1.6.2"
  }

  command = ["consul", "agent", "-config-file=/config/consul.hcl"]

  volume {
    source      = "./consul_config"
    destination = "/config"
  }

  network    = "network.cloud"
  ip_address = "10.5.0.2" // optional
}