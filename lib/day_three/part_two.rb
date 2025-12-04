class PartTwo
  class << self
    def inputs
      File.readlines('lib/day_three/input.txt', chomp: true)
      # File.readlines('lib/day_three/input.txt', chomp: true)
    end

    def run
      result = []
      inputs.each do |input|
        bank = input.split("").map(&:to_i)

        initial_index = -1
        digits = []

        12.times do |i|
          max_index = bank.size - 12 + i
          subset = bank[initial_index + 1..max_index]

          # puts "=============#{i}"
          # puts "input,subset -> #{bank}-#{subset}"
          # puts "initial,max -> #{initial_index}-#{max_index}"

          digit = subset.max
          index = bank.find_index(digit)

          if index <= initial_index
            bank.each_with_index do |battery, i|
              if battery == digit && i > initial_index
                index = i
                break
              end
            end
          end

          initial_index = index

          if index == max_index
            bank[index..].each { |x| digits << x }
            break
          end

          digits << digit
        end
        puts "input, digits -> #{input}#{digits}"

        result << digits.map(&:to_s).join("").to_i
      end

      result.sum
    end
  end
end