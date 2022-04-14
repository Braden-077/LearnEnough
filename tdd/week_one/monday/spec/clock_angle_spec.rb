# frozen_string_literal: true 

require 'clock_angle'

describe ClockAngle do
  describe '#angle?' do
    it 'gives us the correct angle' do
      clock = ClockAngle.new(6, 0)
      expect(clock.hour_angle).to eq 180
    end
    
    it 'works at noon' do
      clock = ClockAngle.new(12, 0)
      expect(clock.hour_angle).to eq 0
    end

    it 'works with minutes' do
      clock = ClockAngle.new(2, 30)
      expect(clock.angle_diff).to eq 120
    end
  end
end