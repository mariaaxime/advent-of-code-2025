class PartOne
  class << self
    def inputs
      # File.readlines('lib/day_three/example_input.txt', chomp: true)
      File.readlines('lib/day_three/input.txt', chomp: true)
    end

    def run
      result = []
      inputs.each do |input|
        bank = input.split("").map(&:to_i)
        first = bank.max
        index = bank.find_index(first)

        if index == bank.size - 1
          first = bank.reject {|x| x == first }.max
          index = bank.find_index(first)
        end

        second = bank[index + 1..].max

        max = "#{first}#{second}".to_i

        result << max

        puts max
      end

      result.sum
    end
  end
end