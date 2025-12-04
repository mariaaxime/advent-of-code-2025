# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_one/part_one'

RSpec.describe PartOne do
  specify :aggregate_failures do
    expect(PartOne.run).to eq(1089)
  end
end
