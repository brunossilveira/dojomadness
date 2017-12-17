module Api
  module Overwatch
    class Hero
      include HTTParty

      format :json

      base_uri 'overwatch-api.net/api/v1'

      def self.list
        response = get('/hero')

        raise response.response unless response.success?

        JSON.parse(response.body)['data'].each { |h| h.delete('url') }
      end

      def self.hero(hero_id)
        response = get("/hero/#{hero_id}")

        raise response.response unless response.success?

        JSON.parse(response.body).except!('url', 'roles', 'sub_roles', 'rewards')
      end
    end
  end
end
