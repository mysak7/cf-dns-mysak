variable "cloudflare_api_token" {
  type      = string
  sensitive = true
}

variable "zone_id" {
  type        = string
  description = "Cloudflare Zone ID for mysak.fun"
}
