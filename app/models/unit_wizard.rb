class UnitWizard < ApplicationRecord


  def CalcBudget()
    x = 0
    a = rand(3..18)
    if a == 3
      x = 10000000
    elsif a == 4
      x = 20000000
    elsif a == 5
      x = 30000000
    elsif a == 6
      x = 40000000
    elsif a == 7
      x = 50000000
    elsif a == 8
      x = 60000000
    elsif a == 9
      x = 75000000
    elsif a == 10
      x = 90000000
    elsif a == 11
      x = 105000000
    elsif a == 12
      x = 120000000
    elsif a == 13
      x = 140000000
    elsif a == 14
      x = 160000000
    elsif a == 15
      x = 180000000
    elsif a == 16
      x = 210000000
    elsif a == 17
      x = 240000000
    elsif a == 18
      x = 300000000
    end
    return x
  end

end 