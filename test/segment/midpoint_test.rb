require 'minitest/autorun'
require 'geometry'

class MidPointTest < Minitest::Test
  include Geometry

  def test_midpoint_1
    segment = Segment.new_by_arrays([0, 2], [2, 0])
    point = segment.mid_point
    assert_equal 1, point.x
    assert_equal 1, point.y
  end

  def test_midpoint_2
    segment = Segment.new_by_arrays([0, -2], [2, 0])
    point = segment.mid_point
    assert_equal 1, point.x
    assert_equal -1, point.y
  end

end
