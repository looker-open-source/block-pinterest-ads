
include: "*.view.lkml"
include: "adapter/*.view.lkml"
include: "/explores/*/*.explore"
view: pinterest_account_date_fact {
  extends: [date_base, pinterest_ad_metrics_base, pinterest_account_key_base, period_base, ad_metrics_period_comparison_base]

  derived_table: {
    datagroup_trigger: pinterest_ads_etl_datagroup
    explore_source: pinterest_ad_impressions_ad_adapter {
      column: date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: average_position {field: fact.weighted_average_position}
      column: clickthrough_1 {field: fact.total_clicks }
      column: total_conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: IMPRESSION_1 { field: fact.total_impressions}
    }
  }
  dimension: account_id {
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
  dimension_group: date {
    hidden: yes
    type: time
    intervals: [day,month,quarter]
    sql: CAST(${TABLE}._date AS DATE) ;;
  }


  set: detail {
    fields: [account_id]
  }
}
