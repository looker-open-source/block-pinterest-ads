include: "*.view.lkml"
view: pinterest_ad_impressions_campaign_adapter {
  sql_table_name: @{PINTEREST_SCHEMA}.campaign_report ;;

  extends: [pinterest_ad_metrics_base,period_base,date_base]


  dimension: campaign_id {
    hidden: yes
    type: number
  }

dimension: account_id {
  hidden: yes
  type: number
  sql: ${TABLE}.advertiser_id ;;
}

  dimension: campaign_id_string {
    hidden: yes
    sql: CAST(${TABLE}.campaign_id as STRING) ;;
  }
  dimension: weighted_average_position {
    hidden: yes
    sql: 0 ;;
  }
  dimension_group: date {
    type: time
    hidden: yes
    intervals: [day,quarter,month]
    sql: ${TABLE}.date ;;
  }
}
