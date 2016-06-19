class Probe
  def deploy

  end

  def take_sample()
    puts "Probe's take_sample"
  end
end

class MineralProbe < Probe
  def take_sample(how_many)
    super()
    puts "MineralProbe's take_sample" + how_many.to_s
  end
end

MineralProbe.new.take_sample(12)