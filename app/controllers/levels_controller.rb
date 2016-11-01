
class LevelsController < ApplicationController
  def index
    @levels = Level.search(params[:search])
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
   @level.date= Time.now.strftime("%Y-%m-%d")
   if @level.save
     redirect_to  levels_path
   else
     render :new
   end
 end

 def destroy
  @level = Level.find(params[:id])
  @level.destroy
  respond_to do |format|
    format.html { redirect_to levels_path, notice: 'Level number was successfully destroyed.' }
  end
end

private
 def level_params
   params.require(:level).permit(:number)
 end

end
