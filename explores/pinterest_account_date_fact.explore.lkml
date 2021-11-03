include: "/views/*/*.view.lkml"
include: "/views/*.view.lkml"
explore: pinterest_account_date_fact {
  persist_with: pinterest_ads_etl_datagroup
  hidden: yes
  from: pinterest_account_date_fact
  view_name: fact
  label: "Account This Period"
  view_label: "Account This Period"
  join: last_fact {
    from: pinterest_account_date_fact
    view_label: "Account Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: total {
    from: pinterest_date_fact
    view_label: "Total This Period"
    sql_on: ${fact.date_period} = ${total.date_period} ;;
    relationship: many_to_one
  }
  join: last_total {
    from: pinterest_date_fact
    view_label: "Total Last Period"
    sql_on: ${fact.date_last_period} = ${last_total.date_period} ;;
    relationship: many_to_one
  }
}
