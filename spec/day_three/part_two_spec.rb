# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_three/part_two'

RSpec.describe PartTwo do
  specify do
    expect(PartTwo.run).to eq(171975854269367)
    # expect(PartTwo.run).to eq(3121910778619) # example
  end
end
