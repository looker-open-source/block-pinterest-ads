include: "adapter/*.view.lkml"
include: "pinterest_account_date_fact.view.lkml"
view: pinterest_campaign_date_fact {
  extends: [pinterest_ad_metrics_base,ad_metrics_parent_comparison_base, pinterest_account_date_fact, pinterest_campaign_key_base,period_base]

  derived_table: {
    datagroup_trigger: pinterest_ads_etl_datagroup
    explore_source: pinterest_ad_impressions_campaign_adapter {
      column: _date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: campaign_id {field: fact.campaign_id}
      column: average_position {field: fact.weighted_average_position}
      column: clickthrough_1 {field: fact.total_clicks }
      column: total_conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: IMPRESSION_1 { field: fact.total_impressions}
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
