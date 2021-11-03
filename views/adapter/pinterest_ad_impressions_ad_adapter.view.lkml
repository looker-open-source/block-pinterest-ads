include: "pinterest_ad_impressions_ad_group_adapter.view.lkml"
view: pinterest_ad_impressions_ad_adapter {
  extends: [pinterest_ad_impressions_ad_group_adapter]
  sql_table_name: {{ fact.pinterest_ads_schema._sql }}.pin_promotion_report ;;

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
}
