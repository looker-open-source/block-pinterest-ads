view: pinterest_campaign {
  sql_table_name: @{PINTEREST_SCHEMA}.campaign_history ;;

  dimension: account_id {
    type: string
    hidden: yes
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: campaign_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: _date {
    type: date
    sql: ${TABLE}.updated_time ;;
    hidden: yes
  }

  dimension: billing_group {
    type: string
    hidden: yes
  }

  dimension: campaign_name {
    type: string
    hidden: no
    sql: ${TABLE}.name ;;
  }

  dimension: campaign_status {
    type: string
    hidden: no
    sql: ${TABLE}.status ;;
  }

  dimension: optimization_goal {
    type: string
    hidden: yes
  }

  dimension: type {
    type: string
    hidden: yes
    sql: ${TABLE}.campaign_type ;;
  }
}
