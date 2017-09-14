class CartController < ApplicationController

  before_action :authenticate_user!, only: [:Checkout]
  def add_to_cart
    line_item = LineItem.new
    #get params
    line_item.product_id = params[:product_id]
    line_item.quantity = params[:quantity]
    

    if line_item.quantity.nil?
      redirect_to root_url
      flash[:alert] = "You didn't select a quantity."
    else 	
    
        #get total
      	line_item.line_item_total = line_item.quantity * line_item.product.price
        #save to db
      	line_item.save
      	redirect_to view_order_url
    end
  end

  def view_order
    @line_items = LineItem.all
  end

  def checkout
    #get line_items
    @line_items = LineItem.all
    #create new order
    @order = Order.new
    @order.user_id = current_user.id

    sum = 0

    if @line_items.empty?
      redirect_to root_url
    else 
     #????????
      @line_items.each do |line_item|
        if @order.order_items[line_item.product_id].nil?
            @order.order_items[line_item.product_id] = line_item.quantity
        else
              @order.order_items[line_item.product_id] += line.item.quantity
          end

          sum += line_item.line_item_total
          end
        
          @order.subtotal = sum 
          @order.sales_tax = sum * 0.07
          @order.grand_total = @order.subtotal + @order.sales_tax
          #save to database.
          @order.save

          @line_items.each do |line_item|
            line_item.product.quantity -= line_item.quantity
            line_item.product.save
          end

          LineItem.destroy_all
        end
   end
end
