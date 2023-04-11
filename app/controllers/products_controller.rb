lass ProductsController < ApplicationController
  protect_from_forgery with: :exception, unless: -> { request.format.json? }

#INDEX
  def index                                    
    @products = Product.all
    render :index
  end

#SUPPLIER INDEX
  def supplier_index
    @suppliers = Supplier.all
    render json: @suppliers
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

#SUPPLIER CREATE
  def supplier_create
    @supplier = Supplier.create(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
      )
    @supplier.save
    render json: @supplier
  end

#SHOW
  def show                                        
    @product = Product.find_by(id: params[:id])
    render :show
  end

#SUPPLIER SHOW
  def supplier_show 
    @supplier = Supplier.find_by(id: params[:id])
    render json: @supplier 
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

  #SUPPLIER UPDATE
  def supplier_update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name]
    @supplier.email = params[:email]
    @supplier.phone_number = params[:phone_number]
    @supplier.save
    render json: @supplier
  end


#DESTROY
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Photo destroyed successfully" }
  end 


#SUPPLIER DESTROY
  def supplier_destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy!
    render html: "This company went bankrupt and is destroyed."
  end
#FIN
end