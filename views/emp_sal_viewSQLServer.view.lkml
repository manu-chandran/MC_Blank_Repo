view: emp_sal_viewSQLServer {
  sql_table_name: mc_orders.empSal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: emp_name_sqlserver{
    type: string
    sql: ${TABLE}.empName ;;
  }
  dimension: emp_sal_sqlserver {
    type: number
    sql: ${TABLE}.empSal ;;
  }
  measure: count {
    type: count
    drill_fields: [id, emp_name_sqlserver]
  }
}
