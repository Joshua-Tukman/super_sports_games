ages = [24, 30, 18, 20, 41]
total = 0

ages.each do |num|
  total += num
end
p total

number_in_array = ages.length
p number_in_array

mean = total/number_in_array.to_f
p mean

new_array = []
ages.each do |num|
  new_array << (num - mean).round(1)
end
p new_array

squared_array = []
new_array.each do|num|
  squared_array << (num ** 2).round(2)
end
p squared_array

new_total_from_squared_array = 0
squared_array.each do |num|
  new_total_from_squared_array += num
end
new_total_from_squared_array_rounded = new_total_from_squared_array.round(1)
p new_total_from_squared_array_rounded

step_seven = (new_total_from_squared_array_rounded/5).round(2)
p step_seven

standard_deviation = (Math.sqrt(step_seven)).round(2)
p standard_deviation














# Your code here for calculating the standard deviation

# When you find the standard deviation, print it out
