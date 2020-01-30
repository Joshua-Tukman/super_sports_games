class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    oldest = 0
    ages.each do |age|
      if age > oldest
        oldest = age
      end
    end
    oldest 
  end

end
