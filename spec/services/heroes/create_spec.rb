require 'rails_helper'

RSpec.describe Heroes::Create do
  subject { described_class.new(hero_id).call }

  describe '#call' do
    let(:hero_id) { 1 }
    let(:hero_data) do
      {
        id: 1,
        name: 'hero',
        abilities: [
          { id: 1, name: 'ability' }
        ]
      }
    end

    before do
      stub_request(:get, "http://overwatch-api.net/api/v1/hero/1").
        with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).to_return(status: 200, body: hero_data.to_json, headers: {})
    end

    it 'create hero from external api' do
      subject

      expect(Hero.count).to eq(1)
    end
  end
end
