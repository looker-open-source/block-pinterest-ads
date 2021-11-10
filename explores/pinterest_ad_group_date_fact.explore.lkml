include: "/views/*/*.view.lkml"
include: "adapter-explores/*.explore"
include: "/views/*.view.lkml"

explore: pinterest_ad_group_date_fact {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_account_date_fact]
  from: pinterest_ad_group_date_fact
  view_name: fact
  label: "Ad Group This Period"
  view_label: "Ad Group This Period"
  join: account {
    from: pinterest_account
    view_label: "Account"
    sql_on: ${fact.account_id} = ${account.account_id} AND
      ${fact.date_date}_date} = ${account._date} ;;
    relationship: many_to_one
  }
  join: last_fact {
    from: pinterest_ad_group_date_fact
    view_label: "Ad Group Last Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.ad_group_id} = ${last_fact.ad_group_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    view_label: "Customer This Period"
    from: pinterest_account_date_fact
    sql_on: ${fact.account_id} = ${parent_fact.account_id} AND
      ${fact.date_date} = ${parent_fact.date_date};;
    relationship: many_to_one
  }
}
