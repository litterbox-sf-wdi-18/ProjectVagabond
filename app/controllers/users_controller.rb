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
  # GET /user/:id/edit
  #
  def edit
    @user = User.find params[:id]
    render :edit
  end

  #
  # POST /users
  #
  def create
    @user = User.create user_params
    if @user.save
      login(@user)
      redirect_to user_path(@user)
    else
      @errors = @user.errors.messages
      render :new
    end
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes params.require(:user).permit(:first_name, :last_name, :home_city)
      redirect_to user_path(@user), flash:{ update_ok: "Changes saved" }
    else
      flash.now[:alert] = "There was a problem with your update"
      @errors = @user.errors.messages
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :home_city, :email, :email_confirmation, :password, :password_confirmation, :avatar)
  end

end
