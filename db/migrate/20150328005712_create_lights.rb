class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.integer :intensity
      t.boolean :power

      t.timestamps
    end
  end
end
