class CartedProductsController < ApplicationController
#--------------------CARTED PRODUCTS--------------------#

# INDEX
  def index
    @carted_products = CartedProduct.order.where(status: "carted")
  end

# CREATE
  def create
    @carted_product = CartedProduct.new(
      order_id: params[:order_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      price: Product.find(params[:product_id]).price,

    )
    if @carted_product.save
      redirect_to carted_products_path
    else
      redirect_to product_path(params[:product_id])
    end
  end

# DESTROY
  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(status: "removed")
    redirect_to carted_products_path
  end
end
