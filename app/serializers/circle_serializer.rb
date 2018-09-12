class CircleSerializer < ActiveModel::Serializer
    attributes :x,:y,:strokeWidth,:strokeColor
    has_one :user 
    has_one :paint_room
end 
