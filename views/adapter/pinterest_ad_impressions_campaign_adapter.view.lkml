view: pinterest_ad_impressions_campaign_adapter {
  sql_table_name: {{ fact.pinterest_ads_schema._sql }}.campaign_report ;;



  dimension: campaign_id {
    hidden: yes
    type: number
  }

  dimension: campaign_id_string {
    hidden: yes
    sql: CAST(${TABLE}.campaign_id as STRING) ;;
  }

  dimension_group: date {
    hidden: yes
    type: time
  }
}
