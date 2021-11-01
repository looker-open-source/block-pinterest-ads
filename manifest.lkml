project_name: "block_pinterest_ads"

# TODO: Update connection
constant: CONNECTION_NAME {
  value: "4mile_snowflake_db_fivetran"
  export: override_optional
}

constant: PINTEREST_SCHEMA {
  value: "PINTEREST"
  export: override_optional
}
