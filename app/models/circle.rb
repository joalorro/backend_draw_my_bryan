class Circle < ApplicationRecord
    validates :x, presence: true
    validates :y, presence: true
    validates :strokeWidth, presence: true
    validates :strokeColor, presence: true
    
end
