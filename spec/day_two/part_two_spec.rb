# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_two/part_two'

RSpec.describe PartTwo do
  specify do
    # expect(PartTwo.run).to eq(4174379265)
    expect(PartTwo.run).to eq(73694270688)
  end
end
