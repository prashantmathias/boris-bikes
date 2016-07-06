require 'docking_station'

describe DockingStation do
  context 'responds to' do

    it { is_expected.to respond_to :release_bike }
    it 'gets a bike and expects it to be working' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it "should respond to 'dock'" do
      expect(subject).to respond_to(:dock).with(1).argument
      bike = subject.release_bike
      expect(subject.dock(bike)).to eq bike
    end

    it "should be able to see the bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

  end
end
