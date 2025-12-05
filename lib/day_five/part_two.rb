class PartTwo
  class << self
    def filename
      # 'lib/day_five/example_input.txt'
      'lib/day_five/input.txt'
    end

    def input
      ranges = []

      File.readlines(filename, chomp: true).each do |line|
        if line == ""
          break
        end
        ranges << line.split("-").map(&:to_i)
      end

      ranges
    end

    def run
      ranges = input
      count = 0
      max = 0

      ranges.sort! { |(a, _), (b, _)| a <=> b }

      ranges.each do |initial, final|
        if final > max
          if initial > max
            count += final - initial + 1
          else
            count += final - max
          end
          max = final
        end
      end

      count
    end
  end
end

