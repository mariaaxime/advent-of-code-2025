class PartOne
  class << self

    def filename
      # 'lib/day_five/example_input.txt'
      'lib/day_five/input.txt'
    end

    def input
      split = false
      ranges = []
      ids = []

      File.readlines(filename, chomp: true).each do |line|
        if line == ""
          split = true
          next
        end

        if split
          ids << line.to_i
        else
          ranges << line.split("-").map(&:to_i)
        end
      end
      [ranges, ids]
    end

    def run
      ranges, ids = input
      ids_size = ids.size

      ranges.each do |initial, final|
        ids = ids.delete_if { |id| id >= initial && id <= final }
      end

      ids_size - ids.size
    end
  end
end

