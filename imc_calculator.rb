class InputError < StandardError
  def initialize(msg = "Invalid parameters for calculating an imc")
    super
  end
end

class ImcCalculator
  def initialize(height, weight)
    begin
      raise InputError, "Height must be greater than 0" unless Float(height) > 0
      raise InputError, "Weight must be greater than 0" unless Float(weight) > 0
      @height = Float(height)
      @weight = Float(weight)
    rescue ArgumentError
      raise InputError, "Height and weight must be numbers"
    end
  end

  def getImc
    return @weight / (@height * @height)
  end
end
