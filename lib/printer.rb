module Printer
  def self.print(transaction_history)
    output = print_line(["date","credit","debit","balance"])
    balances = generate_balance_history(transaction_history)

    transaction_history.reverse.each_with_index do |item,index|
      date = item.date_as_string
      credit = debit = "#{item.amount_as_string}"
      credit = "" if item.type == :debit
      debit  = "" if item.type == :credit
      output += print_line([date,credit,debit,balances[index]])
    end
    output
  end


  private
  def self.generate_balance_history (transaction_history)
    balance = Value.new
    balances = []
    transaction_history.each do |item|
      balance.transaction(item.type,item.amount)
      balances << balance.to_s
    end
    balances.reverse
  end

  def self.print_line (row_array)
    row_array[0] = extend_whitespace row_array[0],11
    row_array[1] = extend_whitespace row_array[1],7
    row_array[2] = extend_whitespace row_array[2],8
    row_array[3] = extend_whitespace row_array[3],8
    row_array.join("||") + "\n"
  end

  def self.extend_whitespace string, amount
    return " #{string}           "[0..amount]
  end
end
