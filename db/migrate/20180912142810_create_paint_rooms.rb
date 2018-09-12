class CreatePaintRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :paint_rooms do |t|

      t.timestamps
    end
  end
end
