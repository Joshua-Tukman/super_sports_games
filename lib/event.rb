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

end
