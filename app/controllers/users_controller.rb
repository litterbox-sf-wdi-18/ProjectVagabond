class UsersController < ApplicationController

  #
  # GET /signup
  #
  def new
    @user = User.new
    render :new
  end

  #
  # GET /user/:id
  #
  def show
    @user = User.find params[:id]
    render :show
  end

  #
  # POST /users
  #
  def create
    @user = User.new user_params
    if @user.save
      login(@user)
      redirect_to user_path(@user)
    else
      @errors = @user.errors.messages
      render :new
    end
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :home_city, :email, :email_confirmation, :password, :password_confirmation)
  end

end
