view: pinterest_ad_group {
  sql_table_name: @{PINTEREST_SCHEMA}.ad_group_history ;;

  dimension: campaign_id {
    type: string
    hidden: yes
  }

  dimension: ad_group_id {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension: _date {
    type: date
    sql: ${TABLE}.updated_time ;;
    hidden:  yes
  }

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: bid_type {
    type: string
    hidden: no

  }

  dimension: budget_type {
    type: string
    hidden:  yes
  }


}
