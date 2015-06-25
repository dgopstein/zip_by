require "zip_by"
require "test/unit"

class TestZipBy < Test::Unit::TestCase
  def test_zip_by
    a = [-2, 3, -4, 1].freeze
    b = [-1, 3, 2, -4].freeze

    ab = [[-2, 2], [3, 3], [-4, -4], [1, -1]]
    ba = ab.map(&:reverse)

    assert_equal(ab, a.zip_by(b, &:abs))
    assert_equal(ba, b.zip_by(a, &:abs))
  end
end
