require_relative "value"

class Transaction
  attr_reader :date, :type
  def initialize args = {}
    @value_class = args[:value_class] || Value
    @amount = @value_class.new(args[:amount])
    @date = args[:date]
    @type = args[:type]
  end

  def amount
    @amount.amount
  end

  def date_as_string
    date.strftime "%d/%m/%Y"
  end

  def amount_as_string
    @amount.to_s
  end
end
