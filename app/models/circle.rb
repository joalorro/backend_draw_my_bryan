class Circle < ApplicationRecord
    # belongs_to :user
    # belongs_to :paint_room

    validates :x, presence: true
    validates :y, presence: true
    validates :strokeWidth, presence: true
    validates :strokeColor, presence: true
    
end
