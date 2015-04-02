require 'time'

def measure(number=1)
  i = 0
  y = Time.now
  until i == number
    yield
    i+=1
  end
  (Time.now - y) / i
end

#this method suffices for the tests, but don't really understand why so
#how stubs are relevant to the exercise.

#puts measure{}