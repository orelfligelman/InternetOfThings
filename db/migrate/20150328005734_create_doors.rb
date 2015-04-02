class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.boolean :lock

      t.timestamps
    end
  end
end
