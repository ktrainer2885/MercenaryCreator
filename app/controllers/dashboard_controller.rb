class DashboardController < ApplicationController
  skip_before_action :verify_authenticity_token
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
    @unit = Unit.find(params["unit_id"])

  end

  def update
    unit = Unit.find(params["unit_id"])
    unit.unit_name = params["unit_name"]
    unit.unit_type = params["unit_type"]
    unit.admin_people = params["admin_people"]
    unit.tech_people = params["tech_people"]
    unit.rating = params["rating"]
    unit.balance = params["balance"]
    unit.ocost = params["ocost"]
    unit.save

    redirect_to action: "index"

  end

end