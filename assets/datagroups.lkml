datagroup: pinterest_ads_etl_datagroup  {
  label: "Pinterest ETL"
  max_cache_age: "24 hours"
  sql_trigger: SELECT max(id) FROM my_tablename ;;
}
