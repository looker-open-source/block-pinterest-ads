include: "*.explore"
include: "/*/*.explore"
include: "/views/adapter/*.view.lkml"
explore: pinterest_ad_impressions_ad_group_adapter {
  extends: [pinterest_account_date_fact, pinterest_ad_group_join]
  from: pinterest_ad_impressions_ad_group_adapter
  view_name: fact
  group_label: "Pinterest Ads"
  label: "Pinterest Ads Impressions by Ad Group"
  view_label: "Impressions by Ad Group"
}
