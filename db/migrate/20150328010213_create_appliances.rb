class CreateAppliances < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.string :oven
      t.boolean :power
      t.string :microwave
      t.boolean :power

      t.timestamps
    end
  end
end
