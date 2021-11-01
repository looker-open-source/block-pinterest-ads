view: pinterest_ad_impressions_adapter {
  sql_table_name: {{ fact.pinterest_ads_schema._sql }}.advertiser_report ;;

  dimension: account_id {
    hidden: yes
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: account_id_string {
    hidden: yes
    sql: CAST(${TABLE}.advertiser_id as STRING) ;;
  }

  dimension: network {
    sql: 'NULL' ;;
  }

  dimension: device {
    sql: 'NULL' ;;
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
