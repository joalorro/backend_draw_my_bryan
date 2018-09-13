class UserSerializer < ActiveModel::Serializer
    attributes :id, :username
    # has_many :circles, serializer: CircleSerializer, include_nested_associations: true
    # has_many :paint_room, serializer: PaintRoomSerializer

end
