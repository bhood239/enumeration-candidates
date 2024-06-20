# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates

puts "Testing experienced? method:"
@candidates.each do |candidate|
  puts "Candidate #{candidate[:id]} experienced? #{experienced?(candidate)}"
end

puts "Testing qualified_candidates method:"
qualified = qualified_candidates(@candidates)
pp qualified

puts "\nTesting ordered_by_qualifications method:"
ordered = ordered_by_qualifications(@candidates)
pp ordered