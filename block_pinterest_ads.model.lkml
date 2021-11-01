connection: "4mile_snowflake_db_fivetran"

## Include Explores
include: "/explores/pinterest_account.explore"
include: "/explores/pinterest_account.explore"
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



datagroup: pinterest_ads_etl_datagroup  {
  label: "Pinterest ETL"

  max_cache_age: "24 hours"
 # sql_trigger: SELECT max(id) FROM my_tablename ;;
}
