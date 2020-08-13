class Api::ProductsController < ApplicationController
  def sample_action
    render "sample.json.jb"
  end

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
      UserID: params[:UserID],
      store_name: params[:store_name],
      product_name: params[:product_name],
      quantity: params[:quantity],
      price: params[:price],
      deadline: params[:deadline],
      store_notes_timestamp: params[:store_notes_timestamp],
      status: params[:status]
    )
    @product.save
    render "show.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.UserID = params[:UserID] || @product.UserID
    @product.store_name = params[:store_name] || @product.store_name
    @product.product_name = params[:product_name] || @product.product_name
    @product.quantity = params[:quantity] || @product.quantity
    @product.price = params[:price] || @product.price
    @product.deadline = params[:deadline] || @product.deadline
    @product.store_notes_timestamp = params[:store_notes_timestamp] || @product.store_notes_timestamp
    @product.status = params[:status] || @product.status
    @product.save
    render "show.json.jb"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product successfully destroyed."}
  end
end
