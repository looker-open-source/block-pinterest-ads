project_name: "block_pinterest_ads"

# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "3d8fe8aa069aecfb55b245599cf2f7a9ed1b8f36"
}

# LookML to map the ETL and data warehouse for Pinterest Ads
remote_dependency: app-marketing-pinterest-ads-adapter {
  url: "git://github.com/looker/app-marketing-pinterest-ads-fivetran-bigquery"
  ref: "6ba76712f3d3eb3733db2e0b63f7da32065ab808"
}

remote_dependency: app-marketing-pinterest-ads {
  url: "git://github.com/looker/app-marketing-pinterest-ads"
  ref: "a4c18ce343b5502bec3e22aac876b3b966d2b164"
}


local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: PINTEREST_SCHEMA {
    value: "@{PINTEREST_SCHEMA}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-pinterest-ads-config"
  export: override_required
}

# TODO: Update connection
constant: CONNECTION_NAME {
  value: "looker_application"
  export: override_required
}

constant: PINTEREST_SCHEMA {
  value: "pinterest_ads"
  export: override_required
}
