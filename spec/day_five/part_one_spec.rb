# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_five/part_one'

RSpec.describe PartOne do
  specify do
    expect(PartOne.run).to eq(744)
    # expect(PartOne.run).to eq(3) # example
  end
end

