
class LevelsController < ApplicationController
  def index
    @levels = Level.all
    render :index
  end

  def show
    @level = Level.find(params[:id])
    render :show
  end

  def new
   @level = Level.new
   render :new
 end

 def create
   @level = Level.new(level_params)
   @level.date= Time.now.strftime("%A, %B %d, %Y")
   if @level.save
     redirect_to  levels_path
   else
     render :new
   end
 end

private
 def level_params
   params.require(:level).permit(:number)
 end

end
