include: "pinterest_ad_impressions_adapter.view.lkml"
view: pinterest_ad_impressions_ad_group_adapter {
  extends: [pinterest_ad_impressions_adapter]
  sql_table_name: {{ fact.pinterest_ads_schema._sql }}.ad_group_report ;;

  dimension: ad_group_id {
    hidden: yes
    type: number
}

dimension: ad_group_id_string {
  hidden: yes
  sql: CAST(${TABLE}.ad_group_id as STRING) ;;
}

dimension: _date {
  type: date
  sql: ${TABLE}.date ;;
}

}
