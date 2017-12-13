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

  def create_unit
    
    @user.units.create(
      unit_name: params["unit_name"],
      unit_type: params["unit_type"],
      admin_people: params["admin_people"],
      tech_people: params["tech_people"],
      rating: params["rating"],
      balance: params["balance"],
      ocost: params["ocost"],
    )


    redirect_to action: "index"
  end
  
  def create
  end

  def delete
    @unit = Unit.find(params["unit_id"])
  end

  def delete_unit
    Unit.find(params["unit_id"]).destroy
    redirect_to action: "index"
  end
end