class SerializableHero < JSONAPI::Serializable::Resource
  type 'heroes'

  attributes :id, :name, :real_name, :description, :health, :armour, :shield,
             :age, :height, :affiliation, :base_of_operations, :difficulty

  has_many :abilities do

  end
end
