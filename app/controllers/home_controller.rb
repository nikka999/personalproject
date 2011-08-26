class HomeController < ApplicationController
  helper_method :current_user
  
  def index
  end 
  
  def create
    current_user.information = params[:information]
    if current_user.save!
      render :json => {:sucess => true, :reason => "your information was saved!"}, :status => 200
    else
      render :json => {:success => false, :reason => "your infomration wasn't read"}, :status => 400
    end
  end
  
    
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
