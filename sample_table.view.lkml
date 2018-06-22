view: sample_table {
  sql_table_name: dbo.SampleTable ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: orders {
    type: number
    sql: ${TABLE}.Orders ;;
  }

  dimension: phone {
    tags: ["phone"]
    type: string
    sql: ${TABLE}.Phone ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }

  measure: max_orders {
    type: number
    sql: MAX(${orders}) ;;
    drill_fields: [id, name]
  }

}
