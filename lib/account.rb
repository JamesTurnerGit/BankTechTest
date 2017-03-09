require_relative "printer"
require_relative "transaction"
class Account

  def initialize args = {}
    @transaction_history = []
    @printer_module    = args[:printer] || Printer
    @transaction_class = args[:transaction] || Transaction
  end

  def deposit(amount,date)
    transaction_history << transaction_class.new(amount: amount, date: date, type: :credit)
    nil
  end

  def withdraw(amount,date)
    transaction_history << transaction_class.new(amount: amount, date: date, type: :debit)
    nil
  end

  def statement
    printer_module.print(transaction_history)
  end

  private

  attr_reader :transaction_history, :printer_module, :value_module, :transaction_class
end
