connection: "thelook_ecommerce"

include: "views/*.view.lkml"

explore: ecommerce {
  from: order_items
  view_name: order_items
  join: users {
    from: users
    type: left_outer
    relationship: many_to_one
    sql_on: ${users.id} = ${order_items.user_id} ;;
  }

  join: inventory_items {
    from: inventory_items
    fields: [inventory_items.product_id,
      inventory_items.cost,
      inventory_items.total_cost,
      inventory_items.average_cost]
    type: left_outer
    relationship: one_to_one
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
  }

  join: products {
    from: products
    type: left_outer
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }
}
