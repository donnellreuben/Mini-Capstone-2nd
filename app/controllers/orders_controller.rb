class OrdersController < ApplicationController
  before_action :authenticate_user
#--------------------ORDERS--------------------#

#INDEX
  def index
    # @orders = Order.where(user: current_user)
    @orders = current_user.orders
    render json: @orders
  end

#CREATE
  def create
    # product = Product.find_by(id: params[:product_id])
    # calculated_subtotal = params[:quantity].to_i * product.price
    
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_tax + calculated_subtotal
    
    @order = Order.new(
      user_id: current_user.id,
      status: "carted",
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax]
      # total: calculated_total
    )
    if @order.save
      render json: {message: "Order created successfully, please add the order to your cart"}
    else
      render json: {error: "Seems like something went wrong :( please try again."}
    end
  end
  

#SHOW
  def show
    @order = Order.find(params[:id])
    if @order.user_id == current_current
      render json: @order
    else
      render json: {error: "You are not authorized to view this order"}
    end
  end

private
  def order_params
    params.require(:order).permit(:status)
  end
end
