variable "domain_name" {}
variable "hosted_zone_id" {}

# Dynamically fetch the ACM certificate based on the domain name
data "aws_acm_certificate" "dev_proj_1_cert" {
  domain   = var.domain_name
  statuses = ["ISSUED"] # Fetch only valid issued certificates
}

# Output the dynamically fetched ACM certificate ARN
output "dev_proj_1_acm_arn" {
  value = data.aws_acm_certificate.dev_proj_1_cert.arn
}

# Create an ACM certificate if one doesn't exist
resource "aws_acm_certificate" "dev_proj_1_acm_arn" {
  domain_name       = var.domain_name
  validation_method = "DNS"

  tags = {
    Environment = "production"
  }

  lifecycle {
    create_before_destroy = false
  }
}

# Create Route53 DNS validation records for the ACM certificate
resource "aws_route53_record" "validation" {
  for_each = {
    for dvo in aws_acm_certificate.dev_proj_1_acm_arn.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  zone_id = var.hosted_zone_id
  name    = each.value.name
  type    = each.value.type
  records = [each.value.record]
  ttl     = 60
}