class CreateCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :circles do |t|
      t.string :x
      t.string :y
      t.string :strokeWidth
      t.string :strokeColor
      t.integer :user_id 
      t.integer :paint_room_id

      t.timestamps
    end
  end
end
