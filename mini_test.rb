require_relative "paragraphtruncator"
require_relative "phonenumberformatter"
require_relative "wordconnector"
require "minitest/autorun"

class PT_test < Minitest::Test
  
  include ParagraphTruncator
  include PhoneNumberFormatter
  include WordConnector
  
  def test_pt
    
    p = "A long string that will be used to test the paragraph truncator method
    in a module rather than a class.  Maybe it'll work, maybe it won't."
  
    x = 75
    
    y = ParagraphTruncator.asdo(p,x)
    
    assert_equal(x,y.length)
    
    assert_kind_of(String, y)
    
  end
  
  def test_pnf
    
    #p1 = 0123456789
    p2 = 1545398387
    
    b = PhoneNumberFormatter.asdo(p2)
    c = PhoneNumberFormatter.asdo(p2)
    
    assert_equal(14,b.length)
    assert_equal("(154) 539-8387",c)
    
  end
  
  def test_wc
    
    l = ["Blue","Green","Aqua"]
    n = ["Blue","Green"]
    
    m = WordConnector.asdo(l)
    o = WordConnector.asdo(n)
    
    assert_equal(2, m.count(','))
    assert(o.include? "and")
  end
  
end
    