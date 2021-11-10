include: "*.view.lkml"
view: pinterest_ad_impressions_ad_group_adapter {
  extends: [pinterest_ad_impressions,period_base,date_base,pinterest_ad_metrics_base]
  sql_table_name: @{PINTEREST_SCHEMA}.ad_group_report ;;

  dimension: ad_group_id {
    hidden: yes
    type: number
    sql: ${TABLE}.ad_group_id ;;
}

dimension: ad_group_id_string {
  hidden: yes
  sql: CAST(${TABLE}.ad_group_id as STRING) ;;
}

dimension_group: date {
  type: time
  intervals: [day,quarter,month]
  sql: ${TABLE}.date ;;
}

}
