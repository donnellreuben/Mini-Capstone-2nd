class ProductsController < ApplicationController
#--------------------PRODUCTS--------------------#

#INDEX
  def index                                    
    @products = Product.all
    render :index
  end

#CREATE
  def create
    @product = Product.create(
			name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
	)
    if @product.save
      @image = Image.new(
        url: params[:image_url],
        product_id: @product.id
      )
      @image.save!
      render :show
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end


#SHOW
  def show                                        
    @product = Product.find_by(id: params[:id])
    render :show
  end


#UPDATE
  def update            
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price]|| @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @prdocut.description
      )
    render :show
  end


#DESTROY
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Photo destroyed successfully" }
  end 


private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
#FIN
end