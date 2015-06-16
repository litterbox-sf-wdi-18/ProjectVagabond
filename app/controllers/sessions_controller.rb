class SessionsController < ApplicationController

  #
  # GET /login
  #
  def new
  end

  #
  # POST /sessions
  #
  def create
    if params[:email].present? && params[:password].present?
      # email and password entered, ok
      if User.find_by(email:params[:email])
        # found a user, ok
        @user = User.confirm({email:params[:email], password:params[:password]})
        if @user
          # user authorized, ok
          login @user
          redirect_to cities_path, flash:{ login_ok: "Welcome back, #{@user.first_name}" }
        else
          # bad password
          flash.now[:alert] = "Invalid password"
          # display the login page again
          render :new
        end
      else
        # user not found
        flash[:alert] = "User not found"
        # have them sign up
        redirect_to signup_path
      end
    else
      # incomplete login fields
      flash.now[:alert] = "Please enter your email and password"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, flash:{ logout_ok: "Goodbye" }
  end

end
