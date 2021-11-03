include: "adapter/*.view.lkml"
include: "*.view.lkml"
view: pinterest_ad_group_date_fact {
  extends: [ad_metrics_parent_comparison_base, pinterest_account_date_fact, pinterest_ad_group_key_base, period_base]

  derived_table: {
    datagroup_trigger: pinterest_ads_etl_datagroup
    explore_source: pinterest_ad_impressions_ad_group_adapter {

    }
  }
  dimension: ad_group_id {
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
    type: time
    hidden: yes
    intervals: [day,quarter,month]
    sql: ${TABLE}.date ;;
  }

  dimension: date_day_of_period {
    hidden: no
  }
  set: detail {
    fields: [account_id, ad_group_id]
  }
}
