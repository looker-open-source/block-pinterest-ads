include: "/views/*/*.view.lkml"
include: "*.explore"

explore: pinterest_ad_date_fact {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_ad_group_date_fact, pinterest_ad_join]
  from: pinterest_ad_date_fact
  view_name: fact
  label: "Ad This Period"
  view_label: "Ad This Period"
  join: last_fact {
    from: pinterest_ad_date_fact
    view_label: "Ad Last Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.ad_group_id} = ${last_fact.ad_group_id} AND
      ${fact.ad_id} = ${last_fact.ad_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: pinterest_ad_group_date_fact
    view_label: "Ad Group This Period"
    sql_on: ${fact.account_id} = ${parent_fact.account_id} AND
      ${fact.ad_group_id} = ${parent_fact.ad_group_id} AND
      ${fact.date_date} = ${parent_fact.date_date} ;;
    relationship: many_to_one
  }
}
