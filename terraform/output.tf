output "cloudfront_domain_name" {
	description = "HTTPS hostname for the website"
	value       = aws_cloudfront_distribution.static_site.domain_name
}

output "cloudfront_url" {
	description = "HTTPS URL for the website"
	value       = "https://${aws_cloudfront_distribution.static_site.domain_name}"
}

output "website_url" {
	description = "Website URL, using the custom hostname when configured"
	value       = var.domain_name == "" ? "https://${aws_cloudfront_distribution.static_site.domain_name}" : "https://${var.domain_name}"
}

output "cloudfront_distribution_id" {
	description = "CloudFront distribution ID"
	value       = aws_cloudfront_distribution.static_site.id
}
