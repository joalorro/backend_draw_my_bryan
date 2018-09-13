class CreateCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :circles do |t|
      t.string :x
      t.string :y
      t.string :strokeWidth
      t.string :strokeColor

      t.integer :paint_room_id
      t.string :username
      t.timestamps
    end
  end
end
