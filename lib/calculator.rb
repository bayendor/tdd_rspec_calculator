# A simple calculator class
class Calculator
  attr_accessor :total

  def initialize
    self.total = 0
  end

  def add(number)
    self.total += number.to_f
    self
  end

  def subtract(number)
    self.total -= number.to_f
    self
  end

  def multiply(number)
    self.total *= number.to_f
    self
  end

  def divide(number)
    self.total /= number.to_f
    self
  end

  def clear
    self.total = 0
  end

end
