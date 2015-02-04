require 'pry'

# Module: PhoneNumberFormatter
#
# Public Methods:
# #do

module PhoneNumberFormatter
  
  # Public: #do
  # Reformats a phone number to: (XXX) XXX-XXXX.
  #
  # Parameters:
  # p - String: contains a 10 digit phone number.
  #
  # Returns:
  # Reformatted string.
  #
  # State Changes:
  # None.
  
  def PhoneNumberFormatter.do(p_num)
    "(#{p_num[0..2]}) #{p_num[3..5]}-#{p_num[6..9]}"
  end
  
  
  
end

# test='1234567890'
# puts PhoneNumberFormatter.do(test)
#
# # #binding.pry