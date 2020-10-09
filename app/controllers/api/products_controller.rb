class Api::ProductsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  def index
    @products = current_user.products.carted
    render "index.json.jb"
  end

  def indexcompleted
    @completed = current_user.products.completed
    render "indexcompleted.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.store_name = params[:store_name] || @product.store_name
    @product.product_name = params[:product_name] || @product.product_name
    @product.quantity = params[:quantity] || @product.quantity
    @product.price = params[:price] || @product.price
    @product.deadline = params[:deadline] || @product.deadline
    @product.store_notes = params[:store_notes] || @product.store_notes
    @product.timestamp = params[:timestamp] || @product.timestamp
    @product.status = params[:status] || @product.status
    @product.picture = params[:picture] || @product.picture
    @product.user_id = @product.user_id || 1
    @product.save
    render "show.json.jb"
  end

  def updatecompleted
    @complete = Product.completed.find_by(id: params[:id])
    @complete.store_name = params[:store_name] || @complete.store_name
    @complete.product_name = params[:product_name] || @complete.product_name
    @complete.quantity = params[:quantity] || @complete.quantity
    @complete.price = params[:price] || @complete.price
    @complete.deadline = params[:deadline] || @complete.deadline
    @complete.store_notes = params[:store_notes] || @complete.store_notes
    @complete.picture = params[:picture] || @complete.picture
    @complete.user_id = @complete.user_id || 1
    @complete.status = params[:status] || @complete.status
    @complete.save
    render "showcompleted.json.jb"
  end

  def indexcompleted2
    @completed = Completed.all
    render "indexcompleted2.json.jb"
  end

  def new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
      store_name: params[:store_name],
      product_name: params[:product_name],
      quantity: params[:quantity],
      price: params[:price],
      deadline: params[:deadline],
      store_notes: params[:store_notes],
      timestamp: params[:timestamp],
      store_notes_timestamp: params[:store_notes_timestamp],
      picture: params[:picture],
      status: params[:status],
      user_id: current_user.id,
    )
    @product.save
    render "show.json.jb"
  end


  def createcompleted
    @complete = Completed.new(
      store_name: params[:store_name],
      product_name: params[:product_name],
      quantity: params[:quantity],
      store_notes: params[:store_notes],
      timestamp: params[:timestamp],
      store_notes_timestamp: params[:store_notes_timestamp],
      price: params[:price],
      deadline: params[:deadline],
      picture: params[:picture],
      status: params[:status],
      user_id: current_user.id
    )
    @complete.save
    render "showcompleted.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end



  def showcompleted
    @complete = Completed.find_by(id: params[:id])
    render "showcompleted.json.jb"
  end

  




  

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product successfully destroyed."}
  end

  def destroycompleted
    complete = Completed.find_by(id: params[:id])
    complete.destroy
    render json: {message: "Product successfully destroyed."}
  end
end
