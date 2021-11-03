explore: pinterest_account_join {
  extension: required

  join: account {
    from: pinterest_account
    view_label: "Account"
    sql_on: ${fact.account_id} = ${account.account_id} AND
      ${fact._date} = ${account._date} ;;
    relationship: many_to_one
  }
}
