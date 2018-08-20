require 'rspec'
require_relative 'planner'

RSpec.describe 'meeting_planner' do
  let(:overlapping_timeslots) {
    slotsA = [[10, 50], [60, 120], [140, 210]],
    slotsB = [[0, 15], [60, 70]],
    dur = 8
  }

  let(:no_overlapping_timeslots) {
    slotsA = [[10, 50], [60, 120], [140, 210]],
    slotsB = [[0, 15], [60, 70]],
    dur = 12
  }
  context 'overlap' do
    it 'returns a timeslot start and end time' do
      expect(overlapping_timeslots.meeting_planner).to eq([60, 68])
    end
  end

  context 'no overlap' do
    it 'returns null if there no overlap between time slots' do
      expect(no_overlapping_timeslots.meeting_planner).to eq(null)
    end
  end
end
