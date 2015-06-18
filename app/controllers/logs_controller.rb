class LogsController < ApplicationController

  def index
  end

  #
  # GET /users/:user_id/logs/new
  #
  def new
    @user = User.find params[:user_id]
    # @city will be nil in the event user posts to his/her current_city
    @city = City.find_by_id params[:city]
    @log = Log.new
  end

  #
  # GET /users/:user_id/logs/:id
  #
  def show
    @log = Log.find(params[:id])
    if params[:city] # navigating from cities#show page
      @back = @log.city.name
      @back_path = city_path(@log.city)
    elsif params[:user] # navigating from users#show page
      @back = @log.user.first_name + " " + @log.user.last_name
      @back_path = user_path(@log.user)
    end
  end

  def edit
    @user = User.find params[:user_id]
    @log = Log.find params[:id]
  end

  #
  # POST /users/:user_id/logs
  #
  def create
    user = User.find params[:user_id]
    @log = Log.create log_params
    if @log.save
      redirect_to user_log_path(user, @log)
    else
      flash.now[:alert] = "There was a problem with your post"
      render :edit
    end
  end

  #
  # PUT users/:user_id/logs/:id
  #
  def update
    user = User.find params[:user_id]
    @log = Log.find params[:id]
    if @log.update_attributes log_params
      redirect_to user_log_path(user, @log)
    else
      flash.now[:alert] = "There was a problem with your update"
      render :edit
    end
  end

  #
  # DELETE users/:user_id/logs/id
  #
  def destroy
    log = Log.find params[:id]
    log.destroy
    redirect_to user_path(params[:user_id])
  end

  private

  # removed :image for now
  def log_params
    params.require(:log).permit(:title, :content, :location, :city_id, :user_id)
  end

  def find_log
    @log = Log.find(params[:id])
  end

end


