include: "*.explore"
include: "/*/*.explore"
include: "/views/adapter/*.view.lkml"
explore: pinterest_ad_impressions_ad_group_adapter {
  from: pinterest_ad_impressions_ad_group_adapter
  view_name: fact
  group_label: "Pinterest Ads"
  label: "Pinterest Ads Impressions by Ad Group"
  view_label: "Impressions by Ad Group"

  join: ad_group {
    from: pinterest_ad_group
    view_label: "Ad Group"
    sql_on: ${fact.ad_group_id} = ${ad_group.ad_group_id} AND
      ${fact.date_date} = ${ad_group._date} ;;
    relationship: many_to_one
  }

  join: account {
    from: pinterest_account
    view_label: "Account"
    sql_on: ${fact.account_id} = ${account.account_id} AND
      ${fact.date_date}_date} = ${account._date} ;;
    relationship: many_to_one
  }
}
