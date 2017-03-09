require "value"
describe Value do
  let(:value){Value.new 1000}
  describe "to_s" do
    it{expect(value.to_s).to eq "10.00"}
  end

  describe "#Transaction" do
    it "adds values when told :credit" do
      value.transaction(:credit, 1000)
      expect(value.amount).to eq 2000
    end
    it "subtracts values when told :debit" do
      value.transaction(:debit, 1000)
      expect(value.amount).to eq 0
    end
  end
end
