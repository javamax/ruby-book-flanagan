# If x is less than 10, increment it
if x < 10                     # newline separator
  x += 1
end

if x < 10 then x += 1 end     # then separator
#---------------------------
if x < 10 then
  x += 1
end

if data         # If the array exists
  data << x     #   then append a value to it.
else            # Otherwise...
  data = [x]    #   create a new array that holds the value.
end             # This is the end of the conditional.

#---------------------------
if x == 1
  name = "one"
elsif x == 2
  name = "two"
elsif x == 3 then name = "three"
elsif x == 4; name = "four"
else
  name = "many"
end

#--------------------------
name = if    x == 1 then "one"
       elsif x == 2 then "two"
       elsif x == 3 then "three"
       elsif x == 4 then "four"
       else              "many"
       end

#---------------------------
puts message if message    # Output message, if it is defined

#----------------------------
# Output message if message exists and the output method is defined
puts message if message if defined? puts
#---------------------------
puts message if message and defined? puts
#---------------------------------

# Call the to_s method on object o, unless o is nil
s = unless o.nil?                        # newline separator
      o.to_s
    end
s = unless o.nil? then o.to_s end        # then separator
#---------------------------
s = o.to_s unless o.nil?
#---------------------------
unless x == 0
  puts "x is not 0"
else
  unless y == 0
    puts "y is not 0"
  else
    unless z == 0
      puts "z is not 0"
    else
      puts "all are 0"
    end
  end
end
#---------------------------
name = case
when x == 1 then "one"
when x == 2 then "two"
when x == 3 then "three"
when x == 4 then "four"
else "many"
       end
#-----------------------------
case
  when x == 1
    "one"
  when x == 2
    "two"
  when x == 3
    "three"
end

# Compute 2006 U.S. income tax using case and Range objects
tax = case income
        when 0..7550
          income * 0.1
        when 7550..30650
          755 + (income-7550)*0.15
        when 30650..74200
          4220 + (income-30655)*0.25
        when 74200..154800
          15107.5 + (income-74201)*0.28
        when 154800..336550
          37675.5 + (income-154800)*0.33
        else
          97653 + (income-336550)*0.35
      end