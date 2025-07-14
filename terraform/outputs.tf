output "cloudfront_url" {
  description = "The CloudFront distribution domain"
  value       = module.next_app.cloudfront_url
}