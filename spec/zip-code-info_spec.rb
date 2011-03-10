require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ZipCodeInfo" do
  
  describe "Positive Test Cases: " do
  
    it "should find the right city" do 
      zip = ZipCodeInfo.instance.find_city "99100"
      zip.should eql "Spokane"
    end
  
    it "should find the right state" do 
      zip = ZipCodeInfo.instance.find_state "99100"
      zip.should eql "WA"
    end
    
    it "should find the right city when the zip is an integer" do 
      zip = ZipCodeInfo.instance.find_city 60699
      ZipCodeInfo.instance.code.should eql "60699"
      zip.should eql "Chicago"
    end
  
    it "should find the right state when the zip is an integer" do 
      zip = ZipCodeInfo.instance.find_state 60699
      ZipCodeInfo.instance.code.should eql "60699"
      zip.should eql "IL"
    end
    
    it "should find the right city name when the city name contains an &" do 
      zip = ZipCodeInfo.instance.find_city "11099"
      zip.should eql "Queens &West Nassau"
    end
  
  end
  
  describe "Negative Test Cases: " do
  
    it "should handle no zip code" do 
      zip = ZipCodeInfo.instance.find_city
      zip.should be_false
    end
  
    it "should handle an invalid zip code - too long" do 
      zip = ZipCodeInfo.instance.find_city("123456")
      zip.should be_false
    end
  
    it "should handle an invalid zip code - too short" do 
      zip = ZipCodeInfo.instance.find_city "1234"
      zip.should be_false
    end
  
    it "should handle an invalid zip code - alphanum" do 
      zip = ZipCodeInfo.instance.find_city "1a23g"
      zip.should be_false 
    end

  end
  
end
