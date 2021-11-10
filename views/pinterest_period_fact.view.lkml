include: "adapter/*.view.lkml"
view: pinterest_period_fact {
  extends: [date_base, period_base, ad_metrics_period_comparison_base, ad_metrics_parent_comparison_base, pinterest_ad_metrics_base]

  dimension: account_id {
    hidden: yes
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: ad_group_id {
    hidden: yes
  }
  dimension: ad_id {
    hidden: yes
  }
  dimension: keyword_id {
    hidden: yes
  }
  dimension: _date {
    type: date_raw
  }

  sql_table_name:
  {% if (fact.ad_id._in_query) %}
    ${pinterest_ad_date_fact.SQL_TABLE_NAME}
  {% elsif (fact.ad_group_id._in_query) %}
    ${pinterest_ad_group_date_fact.SQL_TABLE_NAME}
  {% elsif (fact.campaign_id._in_query) %}
    ${pinterest_campaign_date_fact.SQL_TABLE_NAME}
  {% else %}
    ${pinterest_account_date_fact.SQL_TABLE_NAME}
  {% endif %} ;;
  dimension: key_base {
    hidden: yes
    sql:
           {% if _dialect._name == 'snowflake' %}
              TO_CHAR(${account_id})
                {% if ( campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query %}
                  || '-' || TO_CHAR(${campaign_id})
                {% endif %}
                {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
                  || '-' || TO_CHAR(${ad_group_id})
                {% endif %}
                {% if (ad._in_query or fact.ad_id._in_query) %}
                  || '-' || TO_CHAR(${ad_id})
                {% elsif (keyword._in_query or fact.keyword_id._in_query) %}
                  || '-' || TO_CHAR(${keyword_id})
                {% endif %}
            {% elsif _dialect._name == 'redshift' %}
              CAST(${account_id} AS VARCHAR)
                {% if ( campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
                  || '-' || CAST(${campaign_id} AS VARCHAR)
                {% endif %}
                {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
                  || '-' || CAST(${ad_group_id} AS VARCHAR)
                {% endif %}
                {% if (ad._in_query or fact.ad_id._in_query) %}
                  '-' || CAST(${ad_id} AS VARCHAR)
                {% elsif (keyword._in_query or fact.keyword_id._in_query) %}
                  || '-' || CAST(${keyword_id} AS VARCHAR)
                {% endif %}
            {% else %}
              CONCAT(
              CAST(${account_id} AS STRING)
                {% if (campaign._in_query or fact.campaign_id._in_query or ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
                  ,"-", CAST(${campaign_id} AS STRING)
                {% endif %}
                {% if (ad_group._in_query or fact.ad_group_id._in_query or ad._in_query or fact.ad_id._in_query or keyword._in_query or fact.keyword_id._in_query) %}
                  ,"-", CAST(${ad_group_id} AS STRING)
                {% endif %}
                {% if (ad._in_query or fact.ad_id._in_query) %}
                  ,"-", CAST(${ad_id} AS STRING)
                {% elsif (keyword._in_query or fact.keyword_id._in_query) %}
                  ,"-", CAST(${keyword_id} AS STRING)
                {% endif %}
              )
              {% endif %};;
  }
  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql:
      {% if _dialect._name == 'snowflake' %}
        TO_CHAR(${date_period}) || '-' || TO_CHAR(${date_day_of_period}) || '-' ||  ${key_base}
      {% elsif _dialect._name == 'redshift' %}
        CAST(${date_period} as STRING) || '-' || CAST(${date_day_of_period} as STRING) || '-' ||  ${key_base}
      {% else %}
        concat(CAST(${date_period} as STRING), CAST(${date_day_of_period} as STRING), ${key_base})
      {% endif %} ;;
  }

}
