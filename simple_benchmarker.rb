class SimpleBenchmarker
  def run(description, &block)
    start_time = Time.now
    block.call
    end_time = Time.now
    elasped = end_time - start_time
    puts "\n"
    puts "#{description} results"
    puts "Elasped time: #{elasped} seconds"
  end
end

benchmarker = SimpleBenchmarker.new
benchmarker.run "Sleep a random amount of time" do
  5.times do
    print "."
    sleep(rand(0.1..1.0))
  end
end
