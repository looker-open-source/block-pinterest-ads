include: "*.view"
view: pinterest_ad_impressions {
  extends: [pinterest_ad_metrics_base]
  sql_table_name: @{PINTEREST_SCHEMA}.advertiser_report ;;

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



  dimension_group: date {
    type: time
    hidden: yes
    intervals: [day,quarter,month]
    sql: ${TABLE}.date ;;
  }

}
