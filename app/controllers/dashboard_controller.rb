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

  def CalcBudget
    @roll = rand(3..18)
    if @roll == 3
      @budget = 10000000
    elsif @roll == 4
      @budget = 20000000
    elsif @roll == 5
      @budget = 30000000
    elsif @roll == 6
      @budget = 40000000
    elsif @roll == 7
      @budget = 50000000
    elsif @roll == 8
      @budget = 60000000
    elsif @roll == 9
      @budget = 75000000
    elsif @roll == 10
      @budget = 90000000
    elsif @roll == 11
      @budget = 105000000
    elsif @roll == 12
      @budget = 120000000
    elsif @roll == 13
      @budget = 140000000
    elsif @roll == 14
      @budget = 160000000
    elsif @roll == 15
      @budget = 180000000
    elsif @roll == 16
      @budget = 210000000
    elsif @roll == 17
      @budget = 240000000
    elsif @roll == 18
      @budget = 300000000
    end
  end
  helper_method :CalcBudget

  def stage1
  end

  def stage2
    @@newUnit = Unit.new

    @@newUnit.unit_type = params["unit_type"]
    @@newUnit.era = params["era"]

  end

  def stage3
    @@newUnit.unit_name = params["unit_name"]
    @@newUnit.balance = params["balance"]
  end

  def stage4
    purch = params["equip_purch"].to_f
    @@newUnit.balance = @@newUnit.balance - purch
    @@newUnit.admin_people = params["admin_people"]
    @@newUnit.tech_people = params["tech_people"]
    @@newUnit.rating = params["rating"]
  end

  def create_wizard
    ammo = params["ammo"].to_f
    spare = params["spare"].to_f
    fuel = params["fuel"].to_f
    ocost = ammo + spare + fuel
    @@newUnit.ocost = ocost
    
    @user.units.create(
      unit_name: @@newUnit.unit_name,
      unit_type: @@newUnit.unit_type,
      admin_people: @@newUnit.admin_people,
      tech_people: @@newUnit.tech_people,
      rating: @@newUnit.unit_name,
      balance: @@newUnit.unit_name,
      ocost: @@newUnit.unit_name,
    )
    
    redirect_to action: "index"

  end
  
end