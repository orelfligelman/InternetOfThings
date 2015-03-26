class AddColumnToThermometer < ActiveRecord::Migration
  def change
    add_column :thermometers, :current_temp, :float
  end
end
