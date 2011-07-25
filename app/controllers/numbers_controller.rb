class NumbersController < ApplicationController
  def create
    @num = Number.new(params[:number])
    if @num.save
      render :json => {
      :success => true # :location => url_for(:controller => "campaigns", :action => "management", :store_id => @camp.store_id), :campaign => @camp.id
      }, :status => 200
    else
      render :json => {
      :success => false# , :reason => @camp.errors.full_messages
      }, :status => 300    
    end
  end
end
