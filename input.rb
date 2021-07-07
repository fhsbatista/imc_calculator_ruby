require_relative "calculator"

puts "Type your weight in kilos"
weight = gets.chomp.to_f
puts "Okay, your weigth is #{weight}kg"
puts "Now, please type your height in meters"
height = gets.chomp.to_f
puts "Okay, your height is #{height}m"
imc = Calculator.new.getImc height, weight
puts "Your IMC is: #{imc.round(2)}"
