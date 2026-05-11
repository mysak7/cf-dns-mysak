variable "cloudflare_api_token" {
  type      = string
  sensitive = true
}

variable "cloudflare_zone_id" {
  type        = string
  description = "Cloudflare Zone ID for mysak.fun"
}
