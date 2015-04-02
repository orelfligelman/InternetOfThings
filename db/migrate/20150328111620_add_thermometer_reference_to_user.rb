class AddThermometerReferenceToUser < ActiveRecord::Migration
  def change
    create_join_table :users, :thermometers do |t|
      t.index :user_id
      t.index :thermometer_id
    end
  end
end
