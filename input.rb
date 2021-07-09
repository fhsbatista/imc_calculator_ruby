require_relative "imc_calculator"

puts "Type your weight in kilos"
weight = gets.chomp
puts "Okay, your weigth is #{weight}kg"
puts "Now, please type your height in meters"
height = gets.chomp
puts "Okay, your height is #{height}m"
begin
  imc = ImcCalculator.new.getImc height, weight
  puts "Your IMC is: #{imc.round(2)}"
rescue InputError => e
  puts "Oops, we got an error: #{e}"
rescue
  puts "Some error occurred when calculating your IMC. Please, try again."
end

#check whether exceptions aren't shown on console
