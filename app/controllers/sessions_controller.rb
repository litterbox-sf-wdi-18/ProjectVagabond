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
          redirect_to cities_path
        else
          # bad password
          # display the login page again
          render :new
        end
      else
        # user not found
        # have them sign up
        redirect_to signup_path
      end
    else
      # incomplete login fields
      render :new
    end
  end

  def delete
    logout
    redirect_to root_path
  end

end
