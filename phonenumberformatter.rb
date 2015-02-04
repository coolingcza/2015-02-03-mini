require "active_support"
require "active_support/core_ext/numeric/conversions.rb"

# Module: PhoneNumberFormatter
#
# Public Methods:
# #do

module PhoneNumberFormatter
  #include ActiveSupport::NumberHelper
  
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
  
  # Public: #asdo
  # Reformats a phone number to: (XXX) XXX-XXXX.
  #
  # Parameters:
  # p - Number: a 10 digit phone number.
  #
  # Returns:
  # Formatted string.
  #
  # State Changes:
  # None.
  
  def PhoneNumberFormatter.asdo(p_num)
    p_num.to_s(:phone, area_code: true)
  end
  
  
end

# test='1234567890'
# test2 = test.to_i
# puts PhoneNumberFormatter.do(test)
# puts PhoneNumberFormatter.asdo(test2)

# # #binding.pry