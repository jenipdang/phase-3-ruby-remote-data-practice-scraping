require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://flatironschool.com/"))

doc.css(".heading-financier") ## return what looks like an Array containing one Nokogiri object.
=> [#<Nokogiri::XML::Element:0x6324 name="h1" attributes=[#<Nokogiri::XML::Attr:0x62d4 name="class" value="heading-financier color-white mb-20 text-shadow animate animate-1s">, #<Nokogiri::XML::Attr:0x62e8 name="data-animation" value="fadeInUp">, #<Nokogiri::XML::Attr:0x62fc name="data-animation-delay" value="0s">] children=[#<Nokogiri::XML::Text:0x6310 "\n                                10 years of shaping tech talent                            ">]>] 

doc.css(".heading-financier").text ## allows us to access the text content inside an element scraped by Nokogiri
# => "\n                                10 years of shaping tech talent                            " 

doc.css(".heading-financier").text.strip ## clean up all the whitespace
# => "10 years of shaping tech talent" 

puts doc.css(".heading-financier") ## using puts or print on doc.css will cause the HTML elements to print out.
# <h1 class="heading-financier color-white mb-20 text-shadow animate animate-1s" data-animation="fadeInUp" data-animation-delay="0s">
#                                 10 years of shaping tech talent                            </h1>
#  => nil 

