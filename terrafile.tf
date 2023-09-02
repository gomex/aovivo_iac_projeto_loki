module "produto" {
  source        = "github.com/gomex/aovivo_iac_module_loki?ref=v1.0.0"
  instance_type = "t3.micro"
  sg_group_rule = {
    grafana = {
      cidr_blocks = ["0.0.0.0/0"]
      port        = "3000"
      protocol    = "tcp"
    },
  }
}

output "public_ip" {
  description = "IP publico da instância"
  value       = module.produto.public_ip
}