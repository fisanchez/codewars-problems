https://www.codewars.com/kata/52a1feca5ec9c508d10006f8/train/ruby

# Fluent Calculator

The Kata is inspired by Calculating with Functions Kata for JavaScript.

The goal is to implement simple calculator which uses fluent syntax:

```
Calc.new.one.plus.two             # Should return 3
Calc.new.five.minus.six           # Should return -1
Calc.new.seven.times.two          # Should return 14
Calc.new.nine.divided_by.three     # Should return 3
```

There are only four operations that are supported (plus, minus, times, divided_by) and 10 digits (zero, one, two, three, four, five, six, seven, eight, nine).

Each calculation consists of one operation only.


module MathConstants
  
  NUMBERS = {
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9
  }

  OPERATORS = {
    plus: :+,
    minus: :-,
    times: :*,
    divided_by: :/
  }
  
end

class Calc
  attr_accessor :memo, :operator

  include MathConstants

  def initialize
    @memo = 0
    @operator
  end

  def method_missing(methodName)
    if @operator.nil?
      if OPERATORS.keys.any? { |o| o == methodName }
        @operator = OPERATORS[methodName]
      else
        @memo = NUMBERS[methodName]
      end
    else
      @memo = @memo.send(@operator,NUMBERS[methodName])
      return @memo
    end
    return self
  end

end
