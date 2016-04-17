require 'weather'

describe Weather do

  it { is_expected.to respond_to(:stormy?) }
  it { is_expected.to respond_to(:weather_setter_generator) }

  describe '#stormy?' do
    it "is equal to false" do
      weather = Weather.new
      expect(weather.stormy?).to eq false
    end
  end

  describe '#weather_setter_generator' do
    it "produces a random number value between 1 - 10" do
      weather = Weather.new
      expect(weather.weather_setter_generator).to be <=10
      expect(weather.weather_setter_generator).to be >=0
    end
  end



end