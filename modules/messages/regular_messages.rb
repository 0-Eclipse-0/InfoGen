module Messages
   def Messages.intro
     puts "|----------------------------------------|"
     puts "|-----------------Random-----------------|"
     puts "|---------------Information--------------|"
     puts "|----------------Generator---------------|"
     puts "|----------------------------------------|"
   end
   def Messages.info(name, date, height, address, gender, weight)
     print "\n|---Information Output---|\n"
     print "Name: #{name} \n"
     print "Birthday: #{date} \n"
     print "Height: #{height} \n"
     print "Address: #{address} \n"
     print "Weight: #{weight} \n"
     print "Gender: #{gender} \n"
     print "|------------------------|"
     file = File.new("./info.out", "w")
     file.puts "|---Information Output---|"
     file.puts "Name: #{name} "
     file.puts "Birthday: #{date} "
     file.puts "Height: #{height}"
     file.puts "Address: #{address}"
     file.puts "Weight: #{weight} "
     file.puts "Gender: #{gender} "
     file.puts "|------------------------|"
   end
end
