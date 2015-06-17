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

  def show
    @log = Log.find(params[:id])
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
  params.require(:log).permit(:title, :content, :locaiton, :image)

def find_log
  @log = Log.find(params[:id])
end
