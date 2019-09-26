require 'nokogiri'
require 'open-uri'
require 'pry'

# Problem number should be passed in as first argument to the script - done automatically when passed to template.sh 

def open_url(url)
    Nokogiri::HTML(open(url))
end

def scrape_problem_text
    url = "https://projecteuler.net/problem=#{ARGV[0]}"
    doc = open_url(url)
    doc.css('#content > div.problem_content').text
end

def commentify
    text = scrape_problem_text
    text.split("\n").join("\n# ")
end

puts commentify
