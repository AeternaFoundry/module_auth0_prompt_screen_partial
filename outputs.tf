output "prompt_screen_partials_id" {
  description = "Map of id values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials except keys with no id are omitted"
  value       = { for k, v in auth0_prompt_screen_partial.prompt_screen_partials : k => v.id if v.id != null && length(v.id) > 0 }
}
output "prompt_screen_partials_insertion_points" {
  description = "Map of insertion_points values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials except keys with no insertion_points are omitted"
  value       = { for k, v in auth0_prompt_screen_partial.prompt_screen_partials : k => one(v.insertion_points) if v.insertion_points != null && length(v.insertion_points) > 0 }
}
output "prompt_screen_partials_prompt_type" {
  description = "Map of prompt_type values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials except keys with no prompt_type are omitted"
  value       = { for k, v in auth0_prompt_screen_partial.prompt_screen_partials : k => v.prompt_type if v.prompt_type != null && length(v.prompt_type) > 0 }
}
output "prompt_screen_partials_screen_name" {
  description = "Map of screen_name values across all prompt_screen_partials, keyed the same as var.prompt_screen_partials except keys with no screen_name are omitted"
  value       = { for k, v in auth0_prompt_screen_partial.prompt_screen_partials : k => v.screen_name if v.screen_name != null && length(v.screen_name) > 0 }
}

