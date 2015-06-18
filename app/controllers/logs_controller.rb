class LogsController < ApplicationController

  def index
  end

  def new
    @log = Log.new
  end

  #
  # POST /users/:user_id/logs
  #
  def create
    @log = Log.new(log_params)
    @log.user = current_user
    if @log.save #if log is successfully saved...
      redirect_to @log #redirect to that log...
    else
      flash[:error] = @log.errors.full_messages.to_sentence
      render :new #else, render form again
    end
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
  end

  def update
    if @log.update(log_params)
      redirect_to @log
    else
      render :edit
    end
  end
end

private

def log_params
  params.require(:log).permit(:title, :content, :location, :image)
end

def find_log
  @log = Log.find(params[:id])
end
