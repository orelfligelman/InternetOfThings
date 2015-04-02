class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :meat
      t.string :vegetable
      t.string :fruit
      t.string :dairy

      t.timestamps
    end
  end
end
