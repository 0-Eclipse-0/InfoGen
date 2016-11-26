module Error_messages
  def Error_messages.command
    puts "\nSorry but that command doesn't exist."
    puts "It may exist in the future but until then"
    puts "look in commands.txt for all commands and"
    puts "aliases or use the help command."
  end
  def Error_messages.gender
    puts "\nAn error occured, please make sure you"
    puts "chose a real gender. Check genders.txt"
    puts "to see which aliases are compatible with"
    puts "the program!"
    file = File.new("./info.out", "w")
    file.puts "An error occured, please make sure you"
    file.puts "chose a real gender. Check genders.txt"
    file.puts "to see which aliases are compatible with"
    file.puts "the program!"
  end
end
