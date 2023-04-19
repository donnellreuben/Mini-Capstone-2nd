class SuppliersController < ApplicationController
#--------------------SUPPLIERS--------------------#

#INDEX
  def index
    @suppliers = Supplier.all
    render json: @suppliers
  end

#CREATE
  def create
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
    @supplier = Supplier.find_by(id: params[:id])
    render json: @supplier 
  end

#UPDATE
  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name]
    @supplier.email = params[:email]
    @supplier.phone_number = params[:phone_number]
    @supplier.save
    render json: @supplier
  end

#DESTROY
  def supplier_destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy!
    render html: "This company went bankrupt and is destroyed."
  end

end
