require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  yrs_rep = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  yrs_rep.each { |rep, years| puts "#{rep} - #{years} years"} 
end

def print_lowest_grade_level_speakers(lowest_grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  lowest = $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current < #{lowest_grade}")
  lowest.each { |name, grade| puts "#{name} - #{grade.to_i}"}
end

def print_states
  puts "REPS FOM NJ, NY, ME, FL, AK"
  states = $db.execute("SELECT name, location FROM congress_members WHERE location IN ('NJ', 'NY', 'ME', 'FL', 'AK')")
  states.each { |name, state| puts "#{name}, #{state}"}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8) 
  # TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
print_states

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


