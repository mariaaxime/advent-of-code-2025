# frozen_string_literal: true

require 'rspec'
require_relative '../../lib/day_four/part_one'

RSpec.describe PartOne do
  specify do
    # expect(PartOne.run).to eq(13) # example
    expect(PartOne.run).to eq(1445)
  end
end

