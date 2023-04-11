class ProductsController < ApplicationController
  def index
    # get the right data frmo the db
    @products = Product.all
    # show that data to the user
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]      
    )
    if @product.save
      render :show
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
end