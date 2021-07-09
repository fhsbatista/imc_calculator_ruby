require "./imc_calculator"

RSpec.describe ImcCalculator do
  it "should calculate the imc and return it" do
    imc = ImcCalculator.new(1.75, 85.0).getImc
    roundedImc = imc.round(2)
    expect(roundedImc).to be_equal(27.76)
  end

  it "should throw InputError when an invalid height/weight is input" do
    expect { ImcCalculator.new(0, 85.0).getImc }.to raise_error(InputError)
    expect { ImcCalculator.new(-2, 85.0).getImc }.to raise_error(InputError)
    expect { ImcCalculator.new("adf", 85.0).getImc }.to raise_error(InputError)
    expect { ImcCalculator.new(1.75, 0).getImc }.to raise_error(InputError)
    expect { ImcCalculator.new(1.75, -2).getImc }.to raise_error(InputError)
    expect { ImcCalculator.new(1.75, "adf").getImc }.to raise_error(InputError)
  end

  it "should be able to calculate even though the input is a number in a string format" do
    imc = ImcCalculator.new("1.75", "85.0").getImc
    roundedImc = imc.round(2)
    expect(roundedImc).to be_equal(27.76)
  end
end
