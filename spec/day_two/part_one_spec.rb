# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_two/part_one'

RSpec.describe PartOne do
  specify do
    expect(PartOne.run).to eq(54641809925)
  end
end
