include: "*.explore"
include: "/*/*.explore"
include: "/views/*.view.lkml"

include: "/views/adapter/*.view.lkml"
explore: pinterest_ad_impressions {
  hidden: yes
  from: pinterest_ad_impressions
  view_name: fact
  group_label: "Pinterest Ads"
  label: "Pinterest Ads Impressions"
  view_label: "Impressions"


  join: account {
    from: pinterest_account
    view_label: "Account"
    sql_on: ${fact.account_id} = ${account.account_id} AND
      ${fact.date_date}_date} = ${account._date} ;;
    relationship: many_to_one
  }
}
