module Api
  module Overwatch
    class Ability
      include HTTParty

      format :json

      base_uri 'overwatch-api.net/api/v1'

      def self.list
        response = get('/ability')

        raise response.response unless response.success?

        JSON.parse(response.body)['data'].each { |h| h.delete('url') }
      end
    end
  end
end
