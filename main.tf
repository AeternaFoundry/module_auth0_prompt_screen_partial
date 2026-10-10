resource "auth0_prompt_screen_partial" "prompt_screen_partials" {
  for_each = var.prompt_screen_partials

  prompt_type = each.value.prompt_type
  screen_name = each.value.screen_name

  dynamic "insertion_points" {
    for_each = each.value.insertion_points != null ? [each.value.insertion_points] : []
    content {
      form_content            = insertion_points.value.form_content
      form_content_end        = insertion_points.value.form_content_end
      form_content_start      = insertion_points.value.form_content_start
      form_footer_end         = insertion_points.value.form_footer_end
      form_footer_start       = insertion_points.value.form_footer_start
      secondary_actions_end   = insertion_points.value.secondary_actions_end
      secondary_actions_start = insertion_points.value.secondary_actions_start
    }
  }
}

