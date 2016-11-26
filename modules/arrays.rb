module Arrays
  def Arrays.boys_names
    return IO.read("arrays/2.txt").split.sample
  end
  def Arrays.girls_names
    return IO.read("arrays/1.txt").split.sample
  end
  def Arrays.last_names
    return IO.read("arrays/3.txt").split.sample
  end
  def Arrays.days
    return IO.read("arrays/4.txt").split.sample
  end
  def Arrays.months
    return IO.read("arrays/5.txt").split.sample
  end
  def Arrays.years
    return IO.read("arrays/6.txt").split.sample
  end
  def Arrays.height_inches
    return IO.read("arrays/7.txt").split.sample
  end
  def Arrays.height_feet
    return IO.read("arrays/8.txt").split.sample
  end
  def Arrays.address_number
    return rand(1..9999)
  end
  def Arrays.street_names
    return IO.read("arrays/9.txt").split.sample
  end
  def Arrays.street_types
    return IO.read("arrays/10.txt").split.sample
  end
  def Arrays.weight_pounds
    return rand(110..200)
  end
  def Arrays.weight_ounces
    return rand(1..16)
  end
end
