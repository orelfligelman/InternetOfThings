class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :bedroom
      t.string :bath
      t.string :living
      t.string :dining
      t.string :garage
      t.string :basement

      t.timestamps
    end
  end
end
