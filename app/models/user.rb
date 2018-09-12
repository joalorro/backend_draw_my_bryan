class User < ApplicationRecord
    has_many :circles 
    has_many :paint_rooms, through: :circles
    # has_many :messages 
end
