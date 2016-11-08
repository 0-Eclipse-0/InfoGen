module Info
  def Info.date(month, day, year)
    return "#{month}/#{day}/#{year}"
  end
  def Info.height(feet, inches)
    return "#{feet} feet, #{inches} inches"
  end
  def Info.address(number, name, type)
    return "#{number} #{name}, #{type}."
  end
end
