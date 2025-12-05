# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_five/part_two'

RSpec.describe PartTwo do
  specify do
    expect(PartTwo.run).to eq(347468726696961)
    # expect(PartTwo.run).to eq(14) # example
  end
end

