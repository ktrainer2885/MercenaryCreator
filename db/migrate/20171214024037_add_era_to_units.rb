class AddEraToUnits < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :era, :string
  end
end
