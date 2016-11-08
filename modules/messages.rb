module Messages
   def Messages.intro
     puts "|----------------------------------------|"
     puts "|-----------------Random-----------------|"
     puts "|---------------Information--------------|"
     puts "|----------------Generator---------------|"
     puts "|----------------------------------------|"
   end
   def Messages.info(name, date, height, address, gender)
     print "\n|---Information Output---|\n"
     print "Name: #{name} \n"
     print "Birthday: #{date} \n"
     print "Height: #{height} \n"
     print "Address: #{address} \n"
     print "Gender: #{gender} \n"
     print "|------------------------|"
     file = File.new("./info.out", "w")
     file.puts "|---Information Output---|"
     file.puts "Name: #{name} "
     file.puts "Birthday: #{date} "
     file.puts "Height: #{height}"
     file.puts "Address: #{address}"
     file.puts "Gender: #{gender} "
     file.puts "|------------------------|"
   end
   def Messages.error1
     puts "An error occured, please make sure you"
     puts "chose a real gender. Check genders.txt"
     puts "to see which aliases are compatible with"
     puts "the program!"
     file = File.new("./info.out", "w")
     file.puts "An error occured, please make sure you"
     file.puts "chose a real gender. Check genders.txt"
     file.puts "to see which aliases are compatible with"
     file.puts "the program!"
   end
   def Messages.error2
     print "\n"
     puts "Unknown gender please enter one of the"
     puts "genders listed in the genders.txt file."
   end
end
