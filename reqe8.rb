# In each example below indicate whether or not we should be asserting true or false. 
# (E.g. what should the ? be?).
# pg 134 PixAxe
# Explain the difference between ==, eql and equal?
# in irb is easier
# http://moonbase.rydia.net/mental/blog/programming/ruby-symbols-explained.html about symbols
require 'test/unit'
include Test::Unit::Assertions

str1 = "chitter"
str2 = "chitter"

assert_equal true, str1 == str2
assert_equal true, str1.eql?(str2)
assert_equal false, str1.equal?(str2)
assert_equal false, str1.object_id == str2.object_id
sym1 = :chatter
sym2 = :chatter

assert_equal true, sym1 == sym2
assert_equal true, sym1.eql?(sym2)
assert_equal true, sym1.equal?(sym2)
assert_equal true, sym1.object_id == sym2.object_id