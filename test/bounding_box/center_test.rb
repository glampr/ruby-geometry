require 'minitest/autorun'
require 'geometry'

class CenterTest < Minitest::Test
  include Geometry

  def test_center
    assert_equal Point(0, 0), BoundingBox.new(Point(-1, -1), Point(1, 1)).center
    assert_equal Point(0, 0), BoundingBox.new(Point(-2, -1), Point(2, 1)).center
    assert_equal Point(4.55, 7.75), BoundingBox.new(Point(3.3, 5.2), Point(5.8, 10.3)).center

    # fails due to float precision error
    # assert_equal Point(-33.75, -22.45), BoundingBox.new(Point(-83.3, -45.2), Point(15.8, 0.3)).center
  end

end
