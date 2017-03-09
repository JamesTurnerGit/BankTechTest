require "transaction"


describe "transaction" do
  let(:amount){1000}
  let(:value){double("value", amount: amount,to_s: "10.00")}
  let(:valueClass){double("ValueClass", new: value)}
  let(:date){Time.new(2012,12,12)}
  let(:transaction){Transaction.new(date: date,
                                    amount: amount,
                                    type: :debit,
                                    value_class: valueClass)}
    describe "#creation" do
      it "has a date" do
        expect(transaction.date).to eq date
      end
      it "has a amount" do
        expect(transaction.amount).to eq amount
      end
      it "has a type" do
        expect(transaction.type).to eq :debit
      end
    end
    describe "#date_as_string" do
      it "converts date to string" do
        expect(transaction.date_as_string).to eq date.strftime "%d/%m/%Y"
      end
    end
    describe "#amount_as_string" do
      it "delegates conversion of amount to string" do
        transaction.amount_as_string
        expect(value).to have_received(:to_s)
      end
    end
  end
