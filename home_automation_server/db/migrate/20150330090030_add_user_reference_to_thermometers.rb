class AddUserReferenceToThermometers < ActiveRecord::Migration
  def change
    add_reference :thermometers, :user, index: true
  end
end
