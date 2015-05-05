require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'ZipCodeInfo' do

  describe '#scf_city_for' do

    it 'allows zip code as string' do
      city = ZipCodeInfo.instance.scf_city_for '99100'
      expect(city).to eql 'Spokane'
    end

    it 'allows zip code as integer' do
      city = ZipCodeInfo.instance.scf_city_for 99100
      expect(city).to eql 'Spokane'
    end


    it 'handles city names with &' do
      city = ZipCodeInfo.instance.scf_city_for '11099'
      expect(city).to eql 'Queens &West Nassau'
    end

    it 'returns false if zip code is missing' do
      city = ZipCodeInfo.instance.scf_city_for
      expect(city).to be false
    end

    it 'returns false if zip code not found' do
      city = ZipCodeInfo.instance.scf_city_for '00000'
      expect(city).to be false
    end

    it 'returns false if zip code is invalid' do
      zip = ZipCodeInfo.instance.scf_city_for('123456')
      expect(zip).to be false
    end
  end

  describe '#state_for' do

    it 'allows zip code as string' do
      zip = ZipCodeInfo.instance.state_for '60699'
      expect(zip).to eql 'IL'
    end

    it 'allows zip code as integer' do
      zip = ZipCodeInfo.instance.state_for 60699
      expect(zip).to eql 'IL'
    end
  end

end

