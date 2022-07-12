class ConditionSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :source
end
