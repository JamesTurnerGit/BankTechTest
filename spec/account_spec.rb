require "account"
describe Account do
  let(:transaction){double("Transaction ")}
  let(:transactionClass){double("Transaction ", new: transaction)}
  let(:printer){double("printer", print: "")}
  let(:account){Account.new(printer: printer, transaction: transactionClass)}

  describe "#deposit" do
    it "adds the transer to a log" do
      amount = 1000
      time = Time.new(2012,01,10)
      account.deposit(amount, time)
      values = {amount:amount ,date: time, type: :credit}
      expect(transactionClass).to have_received(:new).with(values)
    end
  end

  describe "#withdraw" do
    it "adds the transer to a log" do
      amount = 1000
      time = Time.new(2012,01,10)
      account.withdraw(amount, time)
      values = {amount:amount ,date: time, type: :debit}
      expect(transactionClass).to have_received(:new).with(values)
    end
  end

  describe "#statement" do
    it "passes on the history to a printer" do
      account.statement
      log = account.instance_variable_get(:@transaction_history)
      expect(printer).to have_received(:print).with(log)
    end
  end
end
