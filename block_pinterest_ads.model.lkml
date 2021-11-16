connection: "@{CONNECTION_NAME}"

## Include Explores

include: "/explores/pinterest_account_date_fact.explore"
include: "/explores/pinterest_ad_date_fact.explore"
include: "/explores/pinterest_ad_group_date_fact.explore"
include: "/explores/pinterest_campaign_date_fact.explore"
include: "/explores/pinterest_period_fact.explore"

## Include Dashboards
include: "/dashboards/block_pinterest_ads_base.dashboard"
include: "/dashboards/pinterest_ads_clicks.dashboard"
include: "/dashboards/pinterest_ads_conversions.dashboard"
include: "/dashboards/pinterest_ads_impressions.dashboard"
include: "/dashboards/pinterest_ads_overview.dashboard"
include: "/dashboards/pinterest_ads_spend.dashboard"

## Include Datagroups
include: "/assets/datagroups.lkml"
