$LOAD_PATH << '.'
require 'modules/messages/command_messages.rb'
require 'modules/name.rb'
require 'modules/info.rb'
require 'modules/arrays.rb'
require 'modules/messages/regular_messages.rb'
require 'modules/messages/error_messages.rb'

#----------------------------------------#
#-----------------Random-----------------#
#---------------Information--------------#
#----------------Generator---------------#
#----------------------------------------#

# Welcome message
puts Messages.intro

# Variables
real_gender = true
date = Info.date(Arrays.months, Arrays.days, Arrays.years)
height = Info.height(Arrays.height_feet, Arrays.height_inches)
address = Info.address(Arrays.address_number, Arrays.street_names, Arrays.street_types)
weight = Info.weight(Arrays.weight_pounds, Arrays.weight_ounces)

# Start of program
print "\nEnter a Command >>> "
command = gets.chomp;
case command
when "Start", "start", "S", "s"
print "\nEnter the Gender >>> " # Gender selection
gender = gets.chomp;
case gender
when "Female", "female", "girl", "Girl", "lady", "Lady", "f", "F", "g", "G" # Female route
  name = Name.girl(Arrays.girls_names, Arrays.last_names)
  gender = "Female"
when "Male", "male", "guy", "Guy", "boy", "Boy", "m", "M", "b", "B" # Male route
  name = Name.boy(Arrays.boys_names, Arrays.last_names)
  gender = "Male"
else
  real_gender = false
end

# Program Output
if real_gender == true
  puts Messages.info(name, date, height, address, gender, weight)
elsif real_gender == false
  puts Error_messages.gender
end
when "Help", "help", "H", "h"
  puts Command_messages.help
when "Info", "info", "I", "i"
  puts Command_messages.info
when "Purpose", "purpose", "P", "p"
  puts Command_messages.purpose
else
  puts Error_messages.command
end
