# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_three/part_one'

RSpec.describe PartOne do
  specify do
    expect(PartOne.run).to eq(17430)
    # expect(PartOne.run).to eq(357) # example
  end
end
