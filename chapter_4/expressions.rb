# Параллельное присваивание

x,y,z = 1,2,3   # Set x to 1, y to 2 and z to 3
puts x, y, z
#----------------------------------------------
x,y = y,x     # Parallel: swap the value of two variables
x = y; y = x  # Sequential: both variables have same value
#---------------------------
x = 1, 2, 3      # x = [1,2,3]
#---------------------------
x, = 1, 2, 3     # x = 1; other values are discarded
#---------------------------
x, y, z = [1, 2, 3]  # Same as x,y,z = 1,2,3
#---------------------------
x = [1,2]    # x becomes [1,2]: this is not parallel assignment
x, = [1,2]   # x becomes 1: the trailing comma makes it parallel

#--------------------------------------------------------------
message = "hello"        # A string
messages = []            # An empty array
message << " world"      # Append to the string
messages << message      # Append message to the array
STDOUT << message        # Print the message to standard output stream
#------------------------------------------------------------

n = 34
puts "\nYou have #{n} #{n==1 ? 'message' : 'messages'}"