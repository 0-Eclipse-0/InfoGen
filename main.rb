$LOAD_PATH << '.'
require 'modules/name.rb'
require 'modules/info.rb'
require 'modules/messages.rb'

#----------------------------------------#
#-----------------Random-----------------#
#---------------Information--------------#
#----------------Generator---------------#
#----------------------------------------#

# Welcome message
puts Messages.intro

# Arrays
@first_names_girls = ["Emma","Olivia", "Ava", "Sophia", "Mia", "Charlotter", "Amelia", "Harper", "Abigail", "Jesse", "Emily", "Madison", "Ella", "Lily", "Avery", "Evelyn", "Sofia", "Aria", "Riley", "Chloe", "Scarlett", "Ellie", "Elizabeth", "Aubrey", "Layla", "Grace", "Zoey", "Mila", "Addison", "Hannah", "Victoria", "Brooklyn", "Zoe", "Penelope", "Lucy", "Baby", "Audrey", "Natalie", "Nora", "Stella", "Skylar"] # First name array (Girls)
@first_names_boys = ["Noah", "Liam", "Ethan", "Mason", "Lucas", "Matthew", "Oliver", "Aiden", "Elijah", "Benjamin", "James", "Logan", "Jacob", "Jackson", "Michael", "Carter", "Daniel", "Luke", "Willia,", "Alexander", "Owen", "Bob", "Joe", "Jack", "Gabriel", "Dave", "Henry", "Sebastian", "Wyatt", "Jayden", "Nathan", "Grayson", "Ryan", "Isaac", "Jaxon", "David", "Caleb", "Eli", "Levi", "Julian", "Andrew", "Dylan", "Lincoln"] # First name array (Boys)
@last_names = ["Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller", "Wilson", "Moore", "Taylor", "Anderson", "Thomas", "Jackson", "White", "Harris", "Martin", "Thompson", "Garcia", "Martinez", "Robinson", "Clark", "Rodriguez", "Lewis", "Lee", "Walker", "Adams", "Green", "Scott", "Hill", "Lopez", "Wright", "King", "Hernandez", "Young", "Allen", "Hall"]
@days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25] # Days array
@months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] # Months array
@years = [1940, 1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948, 1949, 1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000] # Years array
@height_inches = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@height_feet = [5, 6]
@address_number = (1..9999).to_a
@street_names = ["Main", "Church", "High", "Elm", "Park", "Washington", "Walnut", "Chesnut", "Maple", "Broad", "Oak", "River", "Pine", "Water", "Union", "Park", "Market", "Franklin", "School", "Spring", "Mill", "Madison", "Bridge", "Jefferson", "Summit", "Cherry", "Lincoln", "Colonial", "Vine", "Monroe", "Liberty"]
@street_types = ["Ave", "Blvd", "Ct", "Dr", "St", "Rd", "Ln", "Way", "Terr"]

# Variables
random_first_name_girls = @first_names_girls.sample # Random first name variable (girls)
random_first_name_boys = @first_names_boys.sample # Random first name variable (boys)
random_last_name = @last_names.sample # Random last name variable
random_day = @days.sample # Random day variable
random_month = @months.sample # Random month variable
random_year = @years.sample # Random year variable
random_inches = @height_inches.sample
random_feet = @height_feet.sample
random_address_number = @address_number.sample
random_street_name = @street_names.sample
random_street_type = @street_types.sample
real_gender = true
date = Info.date(random_month, random_day, random_year)
height = Info.height(random_feet, random_inches)
address = Info.address(random_address_number, random_street_name, random_street_type)

# Start of program
print "\nEnter the Gender > " # Gender selection
gender = gets.chomp;
case gender
when "Female", "female", "girl", "Girl", "lady", "Lady", "f", "F", "g", "G" # Female route
  name = Name.girl(random_first_name_girls, random_last_name)
  gender = "Female"
when "Male", "male", "guy", "Guy", "boy", "Boy", "m", "M", "b", "B" # Male route
  name = Name.boy(random_first_name_boys, random_last_name)
  gender = "Male"
else
  Messages.error2
  real_gender = false
end

# Program Output
if real_gender == true
  puts Messages.info(name, date, height, address, gender)
elsif real_gender == false
  puts Messages.error1
end
