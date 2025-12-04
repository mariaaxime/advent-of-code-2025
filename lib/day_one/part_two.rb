class PartTwo
  class << self
    INITIAL = 50
    MAX = 99
    TOTAL = 100

    def inputs
      # File.readlines('lib/day_one/example_input_2.txt', chomp: true)
      # File.readlines('lib/day_one/example_input.txt', chomp: true)
      File.readlines('lib/day_one/input.txt', chomp: true)
    end

    def run
      current = INITIAL
      result = []
      count = 0

      inputs.each do |input|
        letter = input[0]
        number = input[1..].to_i
        count += (number / TOTAL)

        if letter == 'L'
          prev_current = current
          current -= (number % TOTAL)

          if current == 0
            count += 1
          elsif current < 0
            current = current + TOTAL
            count += 1 if prev_current != 0
          end
        else
          current += number % TOTAL

          if current > MAX
            current = current - MAX - 1
            count += 1
          end
        end
        result << current
      end

      count
    end
  end
end