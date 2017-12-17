module Api
  class AbilitiesController < ApplicationController
    def index
      @abilities = Ability.all

      render json: @abilities
    end

    def show
      @ability = Ability.find(params[:id])

      render json: @ability
    end
  end
end
