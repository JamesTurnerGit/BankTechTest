require "printer"
describe "printer" do
  xdescribe "#print_line" do
    ""
  end
  describe "extend_whitespace" do
    it{expect(Printer.extend_whitespace("hello",8)).to eq " hello   "}
  end
  describe "print_row" do
    it "should do the row nicely" do
      expect(Printer.print_line(["date","credit","debit","balance"])).to eq " date       || credit || debit   || balance \n"
    end
  end
end
