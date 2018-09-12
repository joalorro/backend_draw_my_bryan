class PaintRoom < ApplicationRecord
    has_many :users 
    has_many :circles, through: :users
end
