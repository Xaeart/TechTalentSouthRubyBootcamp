json.extract! order, :id, :subtotal, :sales_tax, :grand_total, :user_id, :order_items, :created_at, :updated_at
json.url order_url(order, format: :json)
