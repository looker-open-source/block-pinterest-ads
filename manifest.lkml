project_name: "block_pinterest_ads"

# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "3d8fe8aa069aecfb55b245599cf2f7a9ed1b8f36"
}

# LookML to map the ETL and data warehouse for Pinterest Ads
remote_dependency: app-marketing-pinterest-ads-adapter {
  url: "git://github.com/looker/app-marketing-pinterest-ads-fivetran-bigquery"
  ref: "d54beb03fb06ee196c46ef34ea49628b6af4137c"
}

remote_dependency: app-marketing-pinterest-ads {
  url: "git://github.com/looker/app-marketing-pinterest-ads"
  ref: "e872b5f047a6aceef25a3620905e13385b5460a4"
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
  value: "looker_app_2"
  export: override_required
}

constant: PINTEREST_SCHEMA {
  value: "pinterest_generated"
  export: override_required
}
