connection: "@{CONNECTION_NAME}"

## Include Explores

include: "/explores/pinterest_account_date_fact.explore"
include: "/explores/pinterest_ad_date_fact.explore"
include: "/explores/pinterest_ad_group_date_fact.explore"
include: "/explores/pinterest_campaign_date_fact.explore"
include: "/explores/pinterest_period_fact.explore"

## Include Dashboards
include: "/dashboards/*.dashboard.lookml"


## Include Datagroups
include: "/assets/datagroups.lkml"
