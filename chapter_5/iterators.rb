3.times { puts "thank you!" }  # Express gratitude three times
data = 3, 7, 9, 25
data.each {|x| puts x }        # Print each element x of data
[1,2,3].map {|x| x*x }         # Compute squares of array elements
factorial = 1                  # Compute the factorial of n
n = 5
2.upto(n) {|x| factorial *= x }

#--------------------------------------
4.upto(6) {|x| print x}   # => prints "456"
puts "\n"
#---------------------------
3.times {|x| print x }    # => prints "012"
#---------------------------
0.step(Math::PI, 0.1) {|x| puts Math.sin(x) }
#------------------------------
[1,2,3].each {|x| print x }   # => prints "123"
(1..3).each  {|x| print x }   # => prints "123" Same as 1.upto(3)

#---------------------------
puts "\n===================\nprint file\n========================\n"
filename = "iterators.rb"
File.open(filename) do |f|       # Open named file, pass as f
  f.each {|line| print line }    # Print each line in f
end                              # End block and close file
#---------------------------
puts "\n===================\nprint file\n========================\n"
File.open(filename) do |f|
f.each_with_index do |line,number|
  print "#{number}: #{line}"
end
end

#---------------------------
squares = [1,2,3].collect {|x| x*x}   # => [1,4,9]
squares = [1,2,3].map {|x| x*x}   # => [1,4,9]
#---------------------------
evens = (1..10).select {|x| x%2 == 0} # => [2,4,6,8,10]
#---------------------------
odds = (1..10).reject {|x| x%2 == 0}  # => [1,3,5,7,9]
#---------------------------
data = [2, 5, 3, 4]
sum = data.inject {|sum, x| sum + x }      # => 14    (2+5+3+4)
floatprod = data.inject(1.0) {|p,x| p*x }  # => 120.0 (1.0*2*5*3*4)
max = data.inject {|m,x| m>x ? m : x }     # => 5     (largest element)