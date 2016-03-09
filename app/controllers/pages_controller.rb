class PagesController < ApplicationController
  def index
  end
  def signup
    @newusers=Newuser.new
  end
  def add
    @newusers=Newuser.new(params.require(:newusers).permit(:sinm, :sigml, :sipd))
    if @newusers.save
      redirect_to root_path
    else
      render signup
    end  
    
  end
  def show
    @newusers=Newuser.all
  end
end
