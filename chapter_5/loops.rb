x = 10               # Initialize a loop counter variable
while x >= 0 do      # Loop while x is greater than or equal to 0
  puts x             #   Print out the value of x
  x = x - 1          #   Subtract 1 from x
end                  # The loop ends here

# Count back up to 10 using an until loop
x = 0                # Start at 0 (instead of -1)
until x > 10 do      # Loop until x is greater than 10
  puts x
  x = x + 1
end                  # Loop ends here

x = 0                          # Initialize loop variable
puts x = x + 1 while x < 10    # Output and increment in a single expression
#---------------------------
x = 0
while x < 10 do puts x = x + 1 end

# Print the elements in an array
array = [1,2,3,4,5]
for element in array
  puts element
end

# Print the keys and values in a hash
hash = {:a=>1, :b=>2, :c=>3}
for key,value in hash
  puts "#{key} => #{value}"
end