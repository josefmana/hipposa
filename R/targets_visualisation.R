# Set-up targets for visualisations:
targets_visualisation <- list(
  targets::tar_target(
    violin_brains,
    command = draw_violins(
      d0 = raw_data,
      df = preprocessed_data,
      fit = regressions$subcortical,
      help = helpers,
      scl = scales,
      rt_vars = rt_variables,
      which = "brains"
    )
  ),
  targets::tar_target(
    violin_cognition_osa,
    command = draw_violins(
      d0 = raw_data,
      df = preprocessed_data,
      fit = regressions$cognition,
      help = helpers,
      scl = scales,
      rt_vars = rt_variables,
      which = "cognition_osa"
    )
  ),
  targets::tar_target(
    violin_cognition_pd,
    command = draw_violins(
      d0 = raw_data,
      df = preprocessed_data,
      fit = regressions$cognition,
      help = helpers,
      scl = scales,
      rt_vars = rt_variables,
      which = "cognition_pd"
    )
  ),
  targets::tar_target(
    heatmap,
    command = draw_heatmap(
      tab = summaries$`cognition|hippocampi`,
      data = raw_data,
      rts = rt_variables,
      help = helpers,
      pal = "warm"
    )
  )
)
