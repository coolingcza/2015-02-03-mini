 
# Module: ParagraphTruncator
#
# Public Methods:
# #do
 
module ParagraphTruncator
  
  # Public: #do
  # Truncates a paragraph.
  #
  # Parameters:
  # p    - String: contains a long string.
  # x    - Number: length of printed string.
  # char - String: characters to replace string after x.
  #
  # Returns:
  # Reformatted string.
  #
  # State Changes:
  # None.
  
  def ParagraphTruncator.do(p,x,char='...')
    
    "#{p[0..x]}"+char
    
  end
  
end

# p = "The quick brown fox jumped over the lazy dog.  And the
# quick brown fox jumped over the lazy dog again!  And now the
# rabbit has joined in!"
#
# #puts p.length
#
# puts ParagraphTruncator.do(p,100)