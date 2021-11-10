include: "*.explore"
include: "/*/*.explore"
include: "/views/adapter/*.view.lkml"

explore: pinterest_ad_impressions_campaign_adapter {
  from:  pinterest_ad_impressions_campaign_adapter
  view_name: fact
  persist_with: pinterest_ads_etl_datagroup

  group_label: "Pinterest Ads"
  label: "Pinterest Ads Impressions by Campaign"
  view_label: "Impressions by Campaign"

  join: campaign {
    from: pinterest_campaign
    view_label: "Campaign"
    sql_on: ${fact.campaign_id} = ${campaign.campaign_id} AND
      ${fact.date_date} = ${campaign._date} ;;
    relationship: many_to_one
  }



}
