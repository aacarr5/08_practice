------->> Thanks for helping <<----------

For 09_timer it asks to initialize to 0, which is done, but the 
rspec code reads as such:  
 it "should initialize to 0 seconds" do
    @timer.seconds.should == 0
  end

  describe 'time_string' do
    it "should display 0 seconds as 00:00:00" do
      @timer.seconds = 0
      @timer.time_string.should == "00:00:00"

===END CODE===

Since the rspec uses both a seconds and time_string method on the
code, does that mean I'll need three methods (those 2 plus initialize?).

The rspec code's output is (very frustratingly) this:

  1) Timer should initialize to 0 seconds
     Failure/Error: @timer.seconds.should == 0
     NoMethodError:
       undefined method `seconds' for #<Timer:0x007f9933b25088 @time=0>
     # ./spec/09_time_spec.rb:18:in `block (2 levels) in <top (required)>'

  2) Timer time_string should display 0 seconds as 00:00:00
     Failure/Error: @timer.time_string.should == "00:00:00"
     NoMethodError:
       undefined method `time_string' for #<Timer:0x007f9933b2fdd0 @time=0>
     # ./spec/09_time_spec.rb:24:in `block (3 levels) in <top (required)>'

===END CODE===


