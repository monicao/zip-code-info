# Script to regenerate data/data.yml. This is only used in the gem's development.

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'yaml'

zip_to_state = {}

doc = Nokogiri::HTML(open("http://en.wikipedia.org/wiki/ZIP_code_prefixes"))

# puts doc

doc.css('#bodyContent table td b').each do |code|
  puts "zip prefix: #{code.content}\n"
  if code.content.match /^[0-9]{3}/
    # first three digits of the zip and the state. ex. 384 NJ
    a = code.content.split
    if a.length == 2
      @current_zip = a[0].to_s
      zip_to_state[@current_zip] = {:state => a[1][0..1]} unless a[1].length < 2 or @current_zip == "001"
    end
  else
    # the city name ex. New York
    # Make sure there are no line breaks in the name (one city has a line break)
    zip_to_state[@current_zip][:city] = code.content.delete("\n")  
  end
end

# puts zip_to_state.to_yaml

File.open(File.join(File.dirname(__FILE__), '..', 'data', 'data.yml'), "w") do |f|
    f.write zip_to_state.to_yaml
end 

# Double check that the data can be loaded properly.
data = YAML.load(File.open(File.join(File.dirname(__FILE__), '..', 'data', 'data.yml')))
puts data
