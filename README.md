# Template for ProjectEuler Ruby solutions
Short bash script to generate some boilerplate to solve Project Euler problems with Ruby
Includes the pry and benchmark gems, and a benchmark for the last method

Usage example: 
`$ ./template.sh 1 solution`  
This will create a folder in the current directory named "1" and a ruby script inside the folder named "solution.rb" with the boilerplate code, inculding the description of the problem scraped from the website using scraper.rb

To-do:  
-easy undo if it runs incorrectly  
-option to generate the filetree for any set of problems rather than one at a time
