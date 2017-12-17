class SerializableAbility < JSONAPI::Serializable::Resource
  type 'abilities'

  attributes :id, :name, :description, :is_ultimate
end
