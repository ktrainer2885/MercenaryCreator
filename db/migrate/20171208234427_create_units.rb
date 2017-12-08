class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.references :user, foreign_key: true
      t.string :unit_name
      t.string :unit_type
      t.integer :admin_people
      t.integer :tech_people
      t.integer :rating
      t.decimal :balance
      t.decimal :ocost

      t.timestamps
    end
  end
end
