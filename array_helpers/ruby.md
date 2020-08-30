class Array
  def square
    # create your square method here
    self.map { |num| num * num }
  end
  
  def cube
    self.map { |num| num ** 3 }
  end
  
  def average
    return NaN if self.empty?
    ( self.inject(0) {|sum, number| sum + number } ) / self.length
  end
  def sum
    self.inject(0){|sum, number| sum + number}
  end
  def even
    self.select {|number| number % 2 == 0}
  end
  def odd
    self.select {|number| number % 2 > 0}
  end
end
