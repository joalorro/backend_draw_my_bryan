class PaintRoomSerializer < ActiveModel::Serializer
    attributes :name
    has_many :users, serializer: UserSerializer
    has_many :circles, serializer: CircleSerializer
    
end