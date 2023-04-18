class OrdersController < ApplicationController

#--------------------ORDERS--------------------#

#INDEX
  def index
    @orders = Order.where(user: current_user)
    render json: @orders
  end

#CREATE
  def create_order
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )
    if @order.save
      render json: { message: "Order created successfully" }
    else
      render json: { errors: @order.errors.full_messages }
    end
  end
  

#SHOW
  def show_order
    @order = Order.find(params[:id])
    if @order.user_id == current_current
      render json: @order
    else
      render json: {error: "You are not authorized to view this order"}
    end
  end


end
