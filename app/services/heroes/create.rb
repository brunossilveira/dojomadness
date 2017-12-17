require './lib/api/overwatch/hero'

module Heroes
  class Create
    attr_reader :hero_id

    def initialize(hero_id)
      @hero_id = hero_id
    end

    def call
      hero['abilities'] = abilities

      Hero.create(hero)
    end

    private

    def hero
      @hero ||= Api::Overwatch::Hero.hero(hero_id)
                                    .except('role', 'sub_roles', 'rewards')
    end

    def abilities
      @abilities ||= hero['abilities'].map do |ability|
        ability = Ability.new(ability.except('url'))

        ability
      end
    end
  end
end
