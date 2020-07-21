provider "cloudflare" {
    version = "~> 2.0"
    # email pulled from $CLOUDFLARE_EMAIL
    # api_key pulled from $CLOUDFLARE_API_KEY
}

# variable "domain" {
#     default = "binira.ru"
# }

resource "cloudflare_record" "www" {
    zone_id = "5202773da5e1c3cb2a8858da4112e178"
    name    = "www"
    value   = "172.67.192.162"
    type    = "A"
    proxied = true
}