
explore: pinterest_ad_group_join {
  extension: required
  hidden: yes
  join: ad_group {
    from: pinterest_ad_group
    view_label: "Ad Group"
    sql_on: ${fact.ad_group_id} = ${ad_group.ad_group_id} AND
      ${fact._date} = ${ad_group._date} ;;
    relationship: many_to_one
  }
  }
