require './lib/api/overwatch/hero'

heroes_ids = Api::Overwatch::Hero.list.map { |h| h['id'] }

heroes_ids.each do |hero_id|
  Heroes::Create.new(hero_id).call
end
