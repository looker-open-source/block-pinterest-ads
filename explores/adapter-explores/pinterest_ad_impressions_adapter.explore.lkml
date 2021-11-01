include: "*.explore"
include: "/views/adapter/*.view.lkml"
explore: pinterest_ad_impressions_adapter {
  from: pinterest_ad_impressions_adapter
  extends: [pinterest_account_join]
  view_name: fact
  hidden: yes
  group_label: "Pinterest Ads"
  label: "Pinterest Ads Impressions"
  view_label: "Impressions"
}
