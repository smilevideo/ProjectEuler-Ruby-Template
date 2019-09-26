#!/bin/bash

# Pass the problem number as the first arg to scrape problem description - will create a folder with a name of the problem number
# Second arg is the name of the script - can be anything
if [ -e $1/$2.rb ]; then
  echo "Path: \"$1/$1.rb\" already exists!"
else
  if [ -e $1 ]; then 
    echo "Folder \"$1\" already exists. 
Proceeding to creation of \"$1/$2.rb\"..."
  else
    mkdir $1
  fi

  echo "require 'pry'
require 'benchmark'
  

### Problem details:" >> $1/$2.rb

  ruby scraper.rb $1 >> $1/$2.rb

  echo "
def final_answer

    puts \"#{__method__}: \"
end


time = Benchmark.measure {final_answer} 
    
puts \"Total CPU time elapsed: #{(time.total * 1000).round(4)} milliseconds.\"
puts \"Real time elapsed: #{(time.real * 1000).round(4)} milliseconds.\"
" >> $1/$2.rb

  echo "Successfully created file \"$1/$2.rb\""
fi