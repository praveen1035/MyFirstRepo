class SessionController < ApplicationController
  def new
  end
  def create
    user = Newuser.authenticate(logml,logpd)
    if user
      redirect_to home_path
    else
      redirect_to root_path
    end
  end
  def home 
        
  end
end
