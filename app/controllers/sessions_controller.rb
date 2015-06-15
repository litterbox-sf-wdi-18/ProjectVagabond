class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:email].present? && params[:password].present?
      # email and password entered, ok
      if User.find_by(email:params[:email])
        # found a user, ok
        @user = User.confirm({email:params[:email], password:params[:password]})
        if @user
          # user authorized, ok
          login @user
          redirect_to user_path(@user)
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
  end
end
