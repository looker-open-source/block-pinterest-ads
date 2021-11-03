include: "*.explore"
include: "/*/*.explore"
include: "/views/adapter/*.view.lkml"

explore: pinterest_ad_impressions_campaign_adapter {

  persist_with: pinterest_ads_etl_datagroup

  group_label: "Pinterest Ads"
  label: "Pinterest Ads Impressions by Campaign"
  view_label: "Impressions by Campaign"
}
