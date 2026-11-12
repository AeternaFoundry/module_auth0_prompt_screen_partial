output "prompt_screen_partials_id" {
  description = "Map of id values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials"
  value       = { for k, v in auth0_prompt_screen_partial.prompt_screen_partials : k => v.id }
}
output "prompt_screen_partials_insertion_points" {
  description = "Map of insertion_points values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials"
  value       = { for k, v in auth0_prompt_screen_partial.prompt_screen_partials : k => one(v.insertion_points) }
}
output "prompt_screen_partials_prompt_type" {
  description = "Map of prompt_type values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials"
  value       = { for k, v in auth0_prompt_screen_partial.prompt_screen_partials : k => v.prompt_type }
}
output "prompt_screen_partials_screen_name" {
  description = "Map of screen_name values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials"
  value       = { for k, v in auth0_prompt_screen_partial.prompt_screen_partials : k => v.screen_name }
}

