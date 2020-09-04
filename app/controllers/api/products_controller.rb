class Api::ProductsController < ApplicationController
  def sample_action
    render "sample.json.jb"
  end

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def indexcompleted
    @completed = Completed.all
    render "indexcompleted.json.jb"
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
      store_notes_timestamp: params[:store_notes_timestamp],
      picture: params[:picture],
      status: params[:status]
    )
    @product.save
    render "show.json.jb"
  end


  def createcompleted
    @completed = Completed.new(
      UserID: params[:UserID],
      store_name: params[:store_name],
      product_name: params[:product_name],
      quantity: params[:quantity],
      store_notes: params[:store_notes],
      timestamp: params[:timestamp],
      store_notes_timestamp: params[:store_notes_timestamp],
      price: params[:price],
      deadline: params[:deadline],
      status: params[:status]
    )
    @completed.save
    render "showcompleted.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end



  def showcompleted
    @completed = Completed.find_by(id: params[:id])
    render "showcompleted.json.jb"
  end

  # def edit
  #   @product = Product.find_by(id: params[:id])
  #   render 'edit.html.erb'
  # end

  # def editcompleted
  #   @complete = Complete.find_by(id: params[:id])
  #   render 'edit.html.erb'
  # end

  

  def update
    @product = Product.find_by(id: params[:id])
    @product.store_name = params[:store_name] || @product.store_name
    @product.product_name = params[:product_name] || @product.product_name
    @product.quantity = params[:quantity] || @product.quantity
    @product.price = params[:price] || @product.price
    @product.deadline = params[:deadline] || @product.deadline
    @product.store_notes = params[:store_notes] || @product.store_notes
    @product.status = params[:status] || @product.status
    @product.picture = params[:picture] || @product.picture
    @product.save
    render "show.json.jb"
  end

  def updatecompleted
    @completed = Completed.find_by(id: params[:id])
    @completed.store_name = params[:store_name] || @completed.store_name
    @completed.product_name = params[:product_name] || @completed.product_name
    @completed.quantity = params[:quantity] || @completed.quantity
    @completed.price = params[:price] || @completed.price
    @completed.deadline = params[:deadline] || @completed.deadline
    @completed.store_notes = params[:store_notes] || @completed.store_notes
    @completed.status = params[:status] || @completed.status
    @completed.picture = params[:picture] || @completed.picture
    @completed.save
    render "show.json.jb"
  end
  

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product successfully destroyed."}
  end

  def destroycompleted
    complete = Complete.find_by(id: params[:id])
    complete.destroy
    render json: {message: "Product successfully destroyed."}
  end
end
