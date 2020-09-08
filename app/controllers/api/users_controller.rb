class Api::UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end



  def show
    

    # if user.find_by(id: 1)

    # render json: { message: "User Logged In successfully" }

    # Can not display info about signed in user!
    @user = User.find_by(id: params[:id])
    render "user.json.jb"

    # @product = Product.find_by(current_user)
    # render "user.json.jb"
  end

  def index
    @users = User.all
    render "users.json.jb"
  end
  
end
