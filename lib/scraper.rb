require 'nokogiri'
require 'open-uri'
require 'pry'

binding.pry 
html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html) 

doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

courses.each do |course|
  puts course.text.strip 
end 

p doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")[0].name 

# doc.css(".headline-26OIBN")
# p doc.css(".headline-26OIBN").text.strip 