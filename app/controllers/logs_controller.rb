class LogsController < ApplicationController

  def index
  end

  def new
    @log = Log.new
  end

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
  end

  def edit
    authorize @log #???
  end

  def update
    authorize @log #???
    if @log.update(user)
    else
    end
  end

end

def log_params
  params.require(:log).permit(:title, :content, :location, :image)
end

def find_log
  @log = Log.find(params[:id])
end
