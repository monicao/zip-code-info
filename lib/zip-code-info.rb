require 'yaml'
require 'singleton'

class ZipCodeInfo
  include Singleton 
  
  attr_reader :code
    
  def initialize
    @data = YAML.load(File.open(File.join(File.dirname(__FILE__), '..', 'data', 'data.yml')))
  end 
  
  def find_city(code = "")
    return false unless assign_and_validate_code(code)
    @data[code_to_key][:city]
  end
  
  def find_state(code = "")
    return false unless assign_and_validate_code(code)
    @data[code_to_key][:state]
  end

  
  private
  
  def assign_and_validate_code(code)
    @code = code.to_s
    return @code.match /^[0-9]{5}$/i
  end
  
  # To look up information we only need the first three digits of the zip code
  def code_to_key
    @code[0..2]
  end
  

  
end