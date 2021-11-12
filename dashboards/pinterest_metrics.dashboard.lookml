- dashboard: pinterest_metrics
  title: Pinterest Metrics
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Impressions
    name: Impressions
    model: block_pinterest_ads
    explore: pinterest_ad_date_fact
    type: single_value
    fields: [fact.total_impressions, last_fact.total_impressions]
    filters:
      last_fact.period: 28 day
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${fact.total_impressions}/${last_fact.total_impressions})-1",
        label: New Calculation, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: new_calculation, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1F78B4"
    single_value_title: Impressions
    comparison_label: Last Period
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [last_fact.total_impressions]
    listen: {}
    row: 0
    col: 0
    width: 5
    height: 5
  - title: Cumulative Spend
    name: Cumulative Spend
    model: block_pinterest_ads
    explore: pinterest_ad_date_fact
    type: single_value
    fields: [fact.cumulative_spend, last_fact.cumulative_spend]
    filters:
      last_fact.period: 28 day
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${fact.cumulative_spend}/${last_fact.cumulative_spend})-1",
        label: New Calculation, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: new_calculation, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1F78B4"
    single_value_title: Cumulative Spend
    comparison_label: Last Period
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [last_fact.cumulative_spend]
    row: 0
    col: 5
    width: 5
    height: 5
  - title: Clicks
    name: Clicks
    model: block_pinterest_ads
    explore: pinterest_ad_date_fact
    type: single_value
    fields: [fact.total_clicks, last_fact.total_clicks]
    filters:
      last_fact.period: 28 day
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${fact.total_clicks}/${last_fact.total_clicks})-1",
        label: New Calculation, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: new_calculation, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1F78B4"
    single_value_title: Clicks
    comparison_label: Last Period
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [last_fact.total_clicks]
    row: 5
    col: 0
    width: 5
    height: 5
  - title: Avg Cost per Click
    name: Avg Cost per Click
    model: block_pinterest_ads
    explore: pinterest_ad_date_fact
    type: single_value
    fields: [fact.average_cost_per_click, last_fact.average_cost_per_click]
    filters:
      last_fact.period: 28 day
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${fact.average_cost_per_click}/${last_fact.average_cost_per_click})-1",
        label: New Calculation, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: new_calculation, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1F78B4"
    single_value_title: Avg Cost Per Click
    comparison_label: Last Period
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    row: 5
    col: 5
    width: 5
    height: 5
  - title: Clicks vs Impressions
    name: Clicks vs Impressions
    model: block_pinterest_ads
    explore: pinterest_ad_date_fact
    type: looker_line
    fields: [fact.total_impressions, fact.total_clicks, fact.date_period]
    filters:
      fact.total_impressions: ">0"
    sorts: [fact.date_period desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${fact.total_impressions}/${last_fact.total_impressions})-1",
        label: New Calculation, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: new_calculation, _type_hint: number,
        is_disabled: true}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: fact.total_impressions,
            id: fact.total_impressions, name: Impressions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: fact.total_clicks,
            id: fact.total_clicks, name: Clicks}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    custom_color: "#1F78B4"
    show_single_value_title: true
    single_value_title: Impressions
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last Period
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 0
    col: 10
    width: 14
    height: 10
  - title: Campaigns
    name: Campaigns
    model: block_pinterest_ads
    explore: pinterest_campaign_date_fact
    type: looker_grid
    fields: [campaign.campaign_name, fact.average_click_rate, fact.total_clicks, fact.total_conversionvalue,
      fact.total_cost, fact.average_cost_per_click, fact.average_cost_per_conversion,
      fact.average_cost_per_value, fact.average_cost_per_impression, fact.cumulative_conversions,
      fact.cumulative_spend, fact.total_impressions, fact.average_value_per_cost,
      fact.average_value_per_click, fact.average_value_per_conversion, fact.average_value_per_impression]
    sorts: [fact.average_click_rate desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 10
    col: 0
    width: 24
    height: 9
