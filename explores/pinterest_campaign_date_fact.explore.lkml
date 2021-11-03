include: "/views/*/*.view.lkml"
include: "*.explore"
include: "/views/*.view.lkml"

explore: pinterest_campaign_date_fact {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_account_date_fact, pinterest_campaign_join]
  from: pinterest_campaign_date_fact
  view_name: fact
  label: "Campaign This Period"
  view_label: "Campaign This Period"
  join: last_fact {
    from: pinterest_campaign_date_fact
    view_label: "Campaign Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
  }
  join: parent_fact {
    view_label: "Customer This Period"
    from: pinterest_account_date_fact
    sql_on: ${fact.account_id} = ${parent_fact.account_id} AND
      ${fact.date_date} = ${parent_fact.date_date};;
    relationship: many_to_one
  }
}
