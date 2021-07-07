require "./calculator"

RSpec.describe Calculator do
  it "should calculate the imc and return it" do
    imc = Calculator.new.getImc 1.75, 85.0
    roundedImc = imc.round(2)
    expect(roundedImc).to be_equal(27.76)
  end
end
