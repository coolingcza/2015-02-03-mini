# Module: WordConnector
#
# Public Methods:
# #do

module WordConnector
  
  # Public: #do
  # Formats a string listing the values in an array.
  #
  # Parameters:
  # a - Array: contains values to list (strings).
  #
  # Returns:
  # Formatted string.
  #
  # State Changes:
  # None.
  
  def WordConnector.do(a)
    if a.length == 2
      r = "#{a[0]} and #{a[1]}"
    elsif a.length == 3
      r = "#{a[0]}, #{a[1]}, and #{a[2]}"
    else
      r = "unknown"
    end
    r
  end
  
end

# a = ["test","this","string"]
# puts WordConnector.do(a)