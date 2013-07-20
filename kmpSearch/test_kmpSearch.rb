require "./kmpSearch"
require "test/unit"

class TestKMPSearch < Test::Unit::TestCase
  def test_search
    assert_equal(true, kmp_search("hihello", "hello"))
  end
end
