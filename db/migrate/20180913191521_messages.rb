class Messages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :username
      t.timestamps
    end
  end
end
