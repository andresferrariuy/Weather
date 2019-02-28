require 'rspec'
require 'httparty'
require 'json'

describe 'clima app get weather' do
  context 'It check response data' do

    subject do
      response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=london&&appid=e72ca729af228beabd5d20e3b7749713')
      JSON.parse response.body
    end

    it { is_expected.to include('weather') }
    it { is_expected.to include('visibility') }

    context 'checks weather data' do
      subject do
        response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=london&&appid=e72ca729af228beabd5d20e3b7749713')
        JSON.parse(response.body)['weather'][0]
      end
      it { is_expected.to be_a Array }

    end
  end
end
