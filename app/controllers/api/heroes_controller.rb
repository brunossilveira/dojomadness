module Api
  class HeroesController < ApplicationController
    def index
      heroes = Hero.all

      render jsonapi: heroes
    end

    def show
      hero = Hero.find(params[:id])

      render jsonapi: hero, include: [:abilities]
    end
  end
end
