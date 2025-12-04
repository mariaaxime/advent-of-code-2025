# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_four/part_two'

RSpec.describe PartTwo do
  specify do
    # expect(PartTwo.run).to eq(43) # example
    expect(PartTwo.run).to eq(8317)
  end
end

