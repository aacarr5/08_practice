class Timer 

	attr_reader :time_string

	def seconds(time = nil) 
	 #have no idea what I'm doing in this first method...
	end

	def seconds=(time)
		hours = time / 3600
		minutes = (time - (hours*3600)) / 60 
		seconds = time - hours*3600 - minutes*60
		hours_str = "%02d" % hours
		minutes_str = "%02d" % minutes
		seconds_str = "%02d" % seconds
		return "#{hours_str}:#{minutes_str}:#{seconds}"
	end
end

time1=Timer.new

puts time1.seconds



##                         ======NOTES======
# From the rspec, I'm unsure if I have to create an initializing method
# or just a method called seconds which should return 0. If the rspec 
# says '@timer.time_strings.should' I assume I should pass in a number into
# the time_string method. Basically I knwo this works but I'm confused on 
# how it can ask to initialize to something but ask for a 'seconds' method
# and how by passing into one method another method should equal something else.
# 						   ======RSPEC CODE====
#  it "should initialize to 0 seconds" do
#    @timer.seconds.should == 0
#  end
#
#  describe 'time_string' do
#    it "should display 0 seconds as 00:00:00" do
#      @timer.seconds = 0
#      @timer.time_string.should == "00:00:00"
#    end
#                         ====RSPEC OUTPUT======
#  1) Timer should initialize to 0 seconds
#     Failure/Error: @timer.seconds.should == 0
#       expected: 0
#            got: nil (using ==)
#     # ./spec/09_time_spec.rb:18:in `block (2 levels) in <top (required)>'
#
#  2) Timer time_string should display 0 seconds as 00:00:00
#    Failure/Error: @timer.time_string.should == "00:00:00"
#     ArgumentError:
 #      wrong number of arguments (0 for 1)
     # ./lib/09_timer.rb:13:in `time_string'
     # ./spec/09_time_spec.rb:24:in `block (3 levels) in <top (required)>'