# Template for ProjectEuler Ruby solutions
A short bash script to generate some boilerplate to solve Project Euler problems with Ruby 

Includes the pry and benchmark gems, a benchmark for the last method, as well as the description of the problem scraped from its webpage in a comment

Blog post I wrote about this:  
https://medium.com/@andrewk1216/boilerplate-with-bash-deda9f0e0a68 
  
## Usage example: 
`$ ./template.sh 1 solution`  
This will create a folder in the current directory named "1" and a ruby script inside the folder named "solution.rb" with the boilerplate code. The first argument should match up with the problem number you are solving so that the scraper will work correctly.


## To-do:  
-option to generate the filetree for any set of problems rather than one at a time  
-easy undo for the above (currently can just delete folder created)
