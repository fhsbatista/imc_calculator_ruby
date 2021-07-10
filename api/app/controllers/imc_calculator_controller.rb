class ImcCalculatorController < ApplicationController
  def calculate
    imc_calculator = ImcCalculator.new(params[:height], params[:weight])
    imc = imc_calculator.getImc
    render json: { imc: "#{imc}" }
  end
end
