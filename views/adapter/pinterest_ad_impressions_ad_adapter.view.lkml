include: "pinterest_ad_impressions_ad_group_adapter.view.lkml"
include: "pinterest_ad_impressions.view.lkml"

view: pinterest_ad_impressions_ad_adapter {
  extends: [pinterest_ad_impressions_ad_group_adapter,period_base,date_base,pinterest_ad_metrics_base]
  sql_table_name:  @{PINTEREST_SCHEMA}.pin_promotion_report ;;

  dimension: ad_id {
    hidden: yes
    sql: ${TABLE}.pin_id ;;
  }

  dimension: ad_id_string {
    hidden: yes
    sql: CAST(${TABLE}.pin_id as STRING) ;;
  }

  dimension: campaign_id {
    hidden: yes
  }

  dimension_group: date {
    type: time
    intervals: [day,quarter,month]
    sql: ${TABLE}.date ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clickthrough_1;;
    hidden: yes
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.total_conversions;;
    hidden: yes
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impression_1 ;;
    hidden: yes
  }

  dimension: conversionvalue {
    type: number
    sql:${TABLE}.total_conversions_value_in_micro_dollar / 1000000;;
    hidden: yes
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.spend_in_micro_dollar / 1000000 ;;
    hidden: yes
  }

  dimension: weighted_average_position {
    type: number
    sql: 0 ;;
    hidden: yes
  }


}
