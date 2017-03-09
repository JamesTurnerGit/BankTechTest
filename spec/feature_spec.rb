require "account"

describe "Acceptance Criteria" do
  it "meets the Acceptance Criteria" do
    account = Account.new
    account.deposit(100000,Time.new(2012,01,10))
    account.deposit(200000,Time.new(2012,01,13))
    account.withdraw(50000,Time.new(2012,01,14))
    expect(account.statement).to eq " date       || credit || debit   || balance \n 14/01/2012 ||        || 500.00  || 2500.00 \n 13/01/2012 || 2000.00||         || 3000.00 \n 10/01/2012 || 1000.00||         || 1000.00 \n"
  end
end
