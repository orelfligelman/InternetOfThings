class AddRoomRefToLights < ActiveRecord::Migration
  def change
    add_reference :lights, :room, index: true
  end
end
