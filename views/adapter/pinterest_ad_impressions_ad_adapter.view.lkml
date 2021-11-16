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
    sql: ${TABLE}.date ;;
  }




}
