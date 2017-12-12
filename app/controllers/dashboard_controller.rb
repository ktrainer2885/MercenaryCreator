class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :get_user
 
 # @user = current_user
 # @units = @user.units

 def get_user
  @user = current_user
 end
    
  def index
  
    @units = @user.units
  end

  def edit

  end
end