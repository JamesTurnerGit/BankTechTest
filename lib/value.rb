class Value
  attr_reader :amount
  def initialize (number = 0)
    @amount = number
  end

  def to_s
    "#{@amount.to_s[0..-3]}.#{@amount.to_s[-2..-1]}"
  end

  def transaction(type,change)
    if type == :credit
      @amount += change
    else
      @amount -= change
    end
    nil
  end
end
