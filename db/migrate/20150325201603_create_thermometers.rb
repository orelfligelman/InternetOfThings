class CreateThermometers < ActiveRecord::Migration
  def change
    create_table :thermometers do |t|
      t.string :location
      t.float :maxtemp
      t.boolean :power

      t.timestamps
    end
  end
end
