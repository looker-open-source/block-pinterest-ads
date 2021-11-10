
include: "pinterest_ad_group_date_fact.view.lkml"
view: pinterest_ad_date_fact {
  extends: [pinterest_ad_group_date_fact]

  derived_table: {
    datagroup_trigger: pinterest_ads_etl_datagroup
    explore_source: pinterest_ad_impressions_ad_adapter {
      column: date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: campaign_id {field: fact.campaign_id}
      column: ad_group_id {field: fact.ad_group_id}
      column: ad_id { field: fact.ad_id }
      column: average_position {field: fact.weighted_average_position}
      column: clickthrough_1 {field: fact.total_clicks }
      column: total_conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: IMPRESSION_1 { field: fact.total_impressions}
    }
  }
  dimension: ad_id {
    hidden: yes
  }


  dimension: ad_group_id {
    hidden: yes
  }

  dimension: ad_id_string {
    hidden: yes
    sql: CAST(${ad_id} as STRING) ;;
  }

  dimension: ad_group_id_string {
    hidden: yes
    sql: CAST(${ad_group_id} as STRING) ;;
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



  dimension: campaign_id {
    hidden:  yes
  }

  set: detail {
    fields: [account_id, campaign_id, ad_group_id, ad_id]
  }
}
