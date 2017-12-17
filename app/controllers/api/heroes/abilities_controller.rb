module Api
  module Heroes
    class AbilitiesController < ApplicationController
      def index
        hero = Hero.find(params[:hero_id])

        render jsonapi: hero.abilities
      end
    end
  end
end
