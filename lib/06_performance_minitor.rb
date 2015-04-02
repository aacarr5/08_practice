require 'time'

def measure(&block)
  y = Time.now
  yield
  Time.now - y
end

puts measure{}