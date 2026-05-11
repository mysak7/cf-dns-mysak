terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

# ── penny (Azure Container App) ──────────────────────────────────────────────

resource "cloudflare_record" "penny_cname" {
  zone_id = var.cloudflare_zone_id
  name    = "penny"
  type    = "CNAME"
  content = "ca-prd-eus-penny.thankfulisland-4131bb98.eastus.azurecontainerapps.io"
  proxied = false
  ttl     = 300
}

resource "cloudflare_record" "penny_asuid" {
  zone_id = var.cloudflare_zone_id
  name    = "asuid.penny"
  type    = "TXT"
  content = "24C4FD8D3A8507E43D386A411379665BC15579939C271A26E15AE5643A8A540A"
  proxied = false
  ttl     = 300
}

# ── cloudfire (Azure App Service) ────────────────────────────────────────────

resource "cloudflare_record" "cloudfire_cname" {
  zone_id = var.cloudflare_zone_id
  name    = "cloudfire"
  type    = "CNAME"
  content = "mi-3-cloudfire-y29hf3.azurewebsites.net"
  proxied = false
  ttl     = 300
}

resource "cloudflare_record" "cloudfire_asuid" {
  zone_id = var.cloudflare_zone_id
  name    = "asuid.cloudfire"
  type    = "TXT"
  content = "24C4FD8D3A8507E43D386A411379665BC15579939C271A26E15AE5643A8A540A"
  proxied = false
  ttl     = 300
}

# ── AKS LLM ──────────────────────────────────────────────────────────────────

resource "cloudflare_record" "llm_a" {
  zone_id = var.cloudflare_zone_id
  name    = "llm"
  type    = "A"
  content = "20.230.229.131"
  proxied = false
  ttl     = 300
}

resource "cloudflare_record" "grafana_llm_cname" {
  zone_id = var.cloudflare_zone_id
  name    = "grafana.llm"
  type    = "CNAME"
  content = "llm.mysak.fun"
  proxied = false
  ttl     = 300
}
