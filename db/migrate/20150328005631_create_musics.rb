class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :song
      t.string :artist

      t.timestamps
    end
  end
end
