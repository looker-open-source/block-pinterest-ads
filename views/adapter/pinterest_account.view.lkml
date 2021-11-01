view: pinterest_account {
  sql_table_name: @{PINTEREST_SCHEMA}.advertiser_history ;;

  dimension: account_id {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension: _date {
    type: date
    sql: ${TABLE}.updated_time ;;
    hidden: yes
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: currency {
    type: string
    hidden: yes
  }

  dimension: country {
    type: string
    hidden: yes
  }

  dimension: owner_user_id {
    type: string
    hidden: yes
  }

  dimension: is_one_tap {
    type: yesno
    hidden: yes
  }

  dimension: test_account {
    type: yesno
    hidden: yes
  }

  dimension: created_time {
    type: date
    hidden: yes
  }
}