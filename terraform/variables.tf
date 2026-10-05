variable "bucket_name" {
    description = "This is my S3 Bucket"
    type = string
}

variable "domain_name" {
    description = "Optional custom website hostname, such as www.example.com"
    type        = string
    default     = ""

    validation {
        condition     = (var.domain_name == "" && var.route53_zone_name == "") || (var.domain_name != "" && var.route53_zone_name != "")
        error_message = "Set both domain_name and route53_zone_name for a custom domain, or leave both empty."
    }
}

variable "route53_zone_name" {
    description = "Optional existing public Route 53 hosted zone name, such as example.com"
    type        = string
    default     = ""
}