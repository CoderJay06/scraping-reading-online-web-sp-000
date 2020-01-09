require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require 'restclient' 

# page = Nokogiri::HTML(open("http://en.wikipedia.org/")) 
page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/")) 
puts page.class 

# set URL to point to where the page exists
page = Nokogiri::HTML(open(PAGE_URL))
links = page.css("a")
puts links.length   # => 6
puts links[0].text   # => Click here
puts links[0]["href"] # => http://www.google.com



page = Nokogiri::HTML(open(PAGE_URL))
news_links = page.css("a").select{|link| link['data-category'] == "news"}
news_links.each{|link| puts link['href'] }

#=>   http://reddit.com
#=>   http://www.nytimes.com
         
puts news_links.class   #=>   Array 


news_links = page.css("a[data-category=news]")
news_links.each{|link| puts link['href']}
#=>   http://reddit.com
#=>   http://www.nytimes.com

puts news_links.class   #=>   Nokogiri::XML::NodeSet         
         

news_links = page.css("div#references a")
news_links.each{|link| puts "#{link.text}\t#{link['href']}"}


















