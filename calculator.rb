class Calculator
  def getImc(height, weight)
    #handle when parameters come are strings
    return weight / (height * height)
  end
end
