# Terraform GCP
# To output variables, follow pattern:
# value = TYPE.NAME.ATTR

output "balancer" {
    value = join(" ", google_compute_instance.balancer.*.network_interface.0.access_config.0.nat_ip)
}

output "vuecalc_IPs"  {
  value = formatlist("%s = %s", google_compute_instance.vuecalc[*].name, google_compute_instance.vuecalc[*].network_interface.0.access_config.0.nat_ip)
}

output "expressed" {
    value = join(" ", google_compute_instance.expressed.*.network_interface.0.access_config.0.nat_ip)
}

output "happy" {
    value = join(" ", google_compute_instance.happy.*.network_interface.0.access_config.0.nat_ip)
}

output "bootstorage" {
    value = join(" ", google_compute_instance.bootstorage.*.network_interface.0.access_config.0.nat_ip)
}

output "monitoring" {
    value = join(" ", google_compute_instance.monitoring.*.network_interface.0.access_config.0.nat_ip)
}

output "redis" {
    value = formatlist("ip=%s, port=%s", google_redis_instance.redis.*.host, google_redis_instance.redis.*.port)
}