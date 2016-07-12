require "bike"

describe Bike do
  it "should respond to 'working?'" do
    expect(subject).to respond_to :working
  end

  it "can be reported broken" do
    subject.report_broken
    expect(subject).to be_broken #expect(Bike.new).to be_broken(broken?)
  end

  

end
