# frozen_string_literal: true 

class ClockAngle
  attr_accessor :hour, :minute 
  def initialize(hour, minute)
    @hour = hour >= 12 ? hour - 12 : hour
    @minute = minute
  end

  def hour_angle
    (hour + minute/60) * 30
  end

  def minute_angle
    minute * 6
  end

  def angle_diff
    angle_diff = (hour_angle - minute_angle).abs
    angle_diff > 180 ? angle_diff-180 : angle_diff
  end
end