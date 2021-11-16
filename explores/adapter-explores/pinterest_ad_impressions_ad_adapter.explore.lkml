include: "*.explore"
include: "/*/*.explore"
include: "/views/*.view.lkml"

include: "/views/adapter/*.view.lkml"
explore: pinterest_ad_impressions_ad_adapter {
  hidden: yes
  from: pinterest_ad_impressions_ad_adapter
  view_name: fact
  group_label: "Pinterest Ads"
  label: "Pinterest Ads Impressions"
  view_label: "Impressions"

  join: ad_group {
    from: pinterest_ad_group
    view_label: "Ad Group"
    sql_on: ${fact.ad_group_id} = ${ad_group.ad_group_id} AND
      ${fact.date_date} = ${ad_group._date} ;;
    relationship: many_to_one
  }


  join: ad{
    from: pinterest_ad
    view_label: "Ad"
    sql_on: ${fact.ad_id} = ${ad.ad_id} AND
      ${fact.date_date} = ${ad_group._date} ;;
    relationship: many_to_one
  }


  join: account {
    from: pinterest_account
    view_label: "Account"
    sql_on: ${fact.account_id} = ${account.account_id} AND
      ${fact.date_date} = ${account._date} ;;
    relationship: many_to_one
  }
}
