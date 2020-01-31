class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    oldest = 0
    @ages.each do |age|
      if age > oldest
        oldest = age
      end
    end
    oldest
  end

  def min_age
    @ages.min
  end
  def average_age
    total = 0
    average = 0
    @ages.each do |age|
      total += age
    end
    average = total.to_f / @ages.length
  end

  def standard_deviation_age
    total = 0
    subtract_mean_arr = []
    squared_arr = []
    squared_arr_total = 0

    @ages.each do |age|
      total += age

    end
    mean = total.to_f / @ages.length
    @ages.each do |age|
      subtract_mean_arr << (age - mean).round(1)
    end
    subtract_mean_arr.each do |number|
      squared_arr << (number ** 2).round(2)
    end
    squared_arr.each do |element|
      squared_arr_total += element
    end
    divide_result = squared_arr_total.round(2) / @ages.length
    Math.sqrt(divide_result).round(2)

  end
end
