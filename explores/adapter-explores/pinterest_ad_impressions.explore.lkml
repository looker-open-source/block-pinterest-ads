include: "*.explore"
include: "/*/*.explore"
include: "/views/*.view.lkml"

include: "/views/adapter/*.view.lkml"
explore: pinterest_ad_impressions {
  extends: [pinterest_account_join]
  hidden: yes
  group_label: "Pinterest Ads"
  label: "Pinterest Ads Impressions"
  view_label: "Impressions"
}
