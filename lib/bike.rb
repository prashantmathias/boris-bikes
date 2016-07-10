class Bike
  attr_accessor :working, :report_broken

  def initialize
    @working = true
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

  def report_fixed
    @fixed = true
  end

  def fixed?
    @fixed
  end

end
