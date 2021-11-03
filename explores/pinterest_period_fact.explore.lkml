include: "/views/*/*.view.lkml"
include: "*.explore"
include: "/views/*.view.lkml"

explore: pinterest_period_fact {
  persist_with: pinterest_ads_etl_datagroup
  hidden: yes
  from: pinterest_period_fact
  view_name: fact
  label: "Pinterest Period Comparison"
  view_label: "This Period"

  join: account {
    from: pinterest_account
    view_label: "Account"
    type: left_outer
    sql_on: ${fact.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: campaign {
    from: pinterest_campaign
    view_label: "Campaign"
    type: left_outer
    sql_on: ${fact.campaign_id} = ${campaign.campaign_id} ;;
    relationship: many_to_one
  }

  join: ad_group {
    from: pinterest_ad_group
    view_label: "Ad Group"
    type: left_outer
    sql_on: ${fact.ad_group_id} = ${ad_group.ad_group_id} ;;
    relationship: many_to_one
  }

  join: ad {
    from: pinterest_ad
    view_label: "Ad"
    type: left_outer
    sql_on: ${fact.ad_id} = ${ad.ad_id} ;;
    relationship: many_to_one
  }

  join: keyword {
    from: pinterest_keyword
    view_label: "Keyword"
    type: left_outer
    sql_on: ${fact.keyword_id} = ${keyword.keyword_id} ;;
    relationship: many_to_one
  }


  join: last_fact {
    from: pinterest_period_fact
    view_label: "Prior Period"
    sql_on:
      ${fact.date_last_period} = ${last_fact.date_period}
      AND ${fact.date_day_of_period} = ${last_fact.date_day_of_period}
      {% if (fact.ad_id._in_query) %}
        AND ${fact.ad_id} = ${last_fact.ad_id}
      {% elsif (fact.keyword_id._in_query) %}
        AND ${fact.keyword_id} = ${last_fact.keyword_id}
      {% elsif (fact.ad_group_id._in_query) or (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.ad_group_id} = ${last_fact.ad_group_id}
      {% elsif (fact.campaign_id._in_query) or (fact.ad_group_id._in_query) or (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.campaign_id} = ${last_fact.campaign_id}
      {% endif %}
      AND ${fact.account_id} = ${last_fact.account_id} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: pinterest_period_fact
    view_label: "Parent This Period"
    sql_on:
      ${fact.date_period} = ${parent_fact.date_period}
      AND ${fact.date_day_of_period} = ${last_fact.date_day_of_period}
      {% if (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.ad_group_id} = ${parent_fact.ad_group_id}
      {% endif %}
      {% if (fact.ad_group_id._in_query) or (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.campaign_id} = ${parent_fact.campaign_id}
      {% endif %}
      {% if (fact.campaign_id._in_query) or (fact.ad_group_id._in_query) or (fact.ad_id._in_query) or (fact.keyword_id._in_query) %}
        AND ${fact.account_id} = ${parent_fact.account_id}
      {% endif %} ;;
    relationship: many_to_one
  }
  join: total {
    from: pinterest_date_fact
    view_label: "Total This Period"
    sql_on: ${fact.date_period} = ${total.date_period} ;;
    relationship: many_to_one
  }
  join: last_total {
    from: pinterest_date_fact
    view_label: "Total Last Period"
    sql_on: ${fact.date_last_period} = ${total.date_period} ;;
    relationship: many_to_one
  }
}
