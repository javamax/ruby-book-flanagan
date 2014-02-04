'This is a long string literal \
that includes a backslash and a newline'

#---------------------------
message =
    'These three literals are '\
'concatenated into one by the interpreter. '\
'The resulting string contains no newlines.'

puts message

#---------------------------

"\t\"This quote begins with a tab and ends with a newline\"\n"
"\\"  # A single backslash

#---------------------------
message = "360 degrees=#{2*Math::PI} radians" # "360 degrees=6.28318530717959 radians"
puts message
#-------------------------------
puts sprintf("pi is about %.4f", Math::PI) # Returns "pi is about 3.1416"
#----------------------------------
planet = "Earth"
planet = "Hello" + " " + planet    # Produces "Hello Earth"
puts(planet)
# ---------------------------
planet_number = 7
planet = "Hello planet #" + planet_number.to_s  # to_s converts to a string
puts(planet)

#---------------------------
"Hello planet ##{planet_number}"
#---------------------------
greeting = "Hello"
greeting << " " << "World"
puts greeting   # Outputs "Hello World"
#---------------------------
alphabet = "A"
alphabet << ?B   # Alphabet is now "AB"
alphabet << 67   # And now it is "ABC"
#alphabet << 256  # Error in Ruby 1.8: codes must be >=0 and < 256

#---------------------------
ellipsis = '.'*3    # Evaluates to '...'
#---------------------------
a = 0;
"#{a=a+1} " * 3   # Returns "1 1 1 ", not "1 2 3 "

#---------------------------
s = 'hello';   # Ruby 1.9
puts s[0]           # 'h': the first character of the string, as a string
puts s[s.length-1]  # 'o': the last character 'o'
puts s[-1]          # 'o': another way of accessing the last character
s[-2]          # 'l': the second-to-last character
s[-s.length]   # 'h': another way of accessing the first character
s[s.length]    # nil: there is no character at that index
#---------------------------
s[0] = ?H        # Replace first character with a capital H
s[-1] = ?O       # Replace last character with a capital O
s[s.length] = ?! # ERROR! Can't assign beyond the end of the string
#---------------------------
s = "hello"      # Begin with a greeting
s[-1] = ""       # Delete the last character; s is now "hell"
s[-1] = "p!"     # Change new last character and add one; s is now "help!"
#---------------------------
s = "hello"
puts s[0,2]          # "he"
s[-1,1]         # "o": returns a string, not the character code ?o
s[0,0]          # "": a zero-length substring is always empty
s[0,10]         # "hello": returns all the characters that are available
s[s.length,1]   # "": there is an empty string immediately beyond the end
s[s.length+1,1] # nil: it is an error to read past that
s[0,-1]         # nil: negative lengths don't make any sense
#---------------------------------------
s = "hello"
puts s[2..3]           # "ll": characters 2 and 3
s[-3..-1]         # "llo": negative indexes work, too
s[0..0]           # "h": this Range includes one character index
s[0...0]          # "": this Range is empty
s[2..1]           # "": this Range is also empty
s[7..10]          # nil: this Range is outside the string bounds
s[-2..-1] = "p!"     # Replacement: s becomes "help!"
s[0...0] = "Please " # Insertion: s becomes "Please help!"
s[6..10] = ""        # Deletion: s becomes "Please!"
#----------------------------------------
s = "&#xA5;1000"
s.each_char {|x| print "#{x} " }         # Prints "&#xA5; 1 0 0 0". Ruby 1.9
0.upto(s.size-1) {|i| print "#{s[i]} "}  # Inefficient with multibyte chars
