include: "adapter/*.view.lkml"
include: "pinterest_account_date_fact.view.lkml"
view: pinterest_campaign_date_fact {
  extends: [ad_metrics_parent_comparison_base, pinterest_account_date_fact, pinterest_campaign_key_base,period_base]

  derived_table: {
    datagroup_trigger: pinterest_ads_etl_datagroup
    explore_source: pinterest_ad_impressions_campaign_adapter {

    }
  }
  dimension: campaign_id {
    hidden: yes
  }

  dimension: conversionvalue {
    type: number
    hidden:  yes
    sql: ${TABLE}.conversionvalue ;;
  }

  dimension: cost {
    type: number
    hidden:  yes
    sql: ${TABLE}.cost ;;
  }
  set: detail {
    fields: [account_id, campaign_id]
  }
}
