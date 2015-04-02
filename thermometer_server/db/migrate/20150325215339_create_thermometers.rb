class CreateThermometers < ActiveRecord::Migration
  def change
    create_table :thermometers do |t|
      t.float :temperature

      t.timestamps
    end
  end
end
