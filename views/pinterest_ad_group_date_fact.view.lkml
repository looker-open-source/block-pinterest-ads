include: "adapter/*.view.lkml"
include: "*.view.lkml"
view: pinterest_ad_group_date_fact {
  extends: [ad_metrics_parent_comparison_base, pinterest_account_date_fact, pinterest_ad_group_key_base, period_base, pinterest_ad_metrics_base]

  derived_table: {
    datagroup_trigger: pinterest_ads_etl_datagroup
    explore_source: pinterest_ad_impressions_ad_group_adapter {

        column: date { field: fact.date_date }
        column: account_id { field: fact.account_id }
        column: ad_group_id {field: fact.ad_group_id}
        column: average_position {field: fact.weighted_average_position}
        column: clickthrough_1 {field: fact.total_clicks }
        column: total_conversions {field: fact.total_conversions}
        column: conversionvalue {field: fact.total_conversionvalue}
        column: cost {field: fact.total_cost}
        column: IMPRESSION_1 { field: fact.total_impressions}
        # column: bid_type {}

    }
  }
  dimension: ad_group_id {
    hidden: yes
    sql: ${TABLE}.ad_group_id ;;
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
    type: time
    hidden: yes
    sql: ${TABLE}.date ;;
  }

  dimension: date_day_of_period {
    hidden: no
  }


  set: detail {
    fields: [account_id, ad_group_id]
  }
}
