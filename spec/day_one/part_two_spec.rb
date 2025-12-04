# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_one/part_two'

RSpec.describe PartTwo do
  specify do
    expect(PartTwo.run).to eq(6530)
  end
end