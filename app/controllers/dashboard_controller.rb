class DashboardController < ApplicationController
  before_action :authenticate_user!
 
 # @user = current_user
 # @units = @user.units
    
  def index
      @user = current_user
      @units = @user.units
  end
end