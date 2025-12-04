class PartTwo
  class << self
    def input_file
      # 'lib/day_four/example_input.txt'
      'lib/day_four/input.txt'
    end

    def inputs
      File.readlines(input_file, chomp: true)
          .map { |line| line.split("") }
    end

    def run
      matrix = inputs

      x = matrix[0].size
      y = matrix.size

      global_count = 0
      iteration = 10000000

      while iteration > 0 do
        positions_to_replace = []

        (0...x).each do |i|
          (0...y).each do |j|
            current = matrix.dig(i, j)

            if current == "."
              next
            end

            local_count = 0
            (-1..1).each do |horizontal|
              (-1..1).each do |vertical|
                next if horizontal == 0 && vertical == 0
                next if horizontal + i < 0 || horizontal + i >= x
                next if vertical + j < 0 || vertical + j >= y

                element = matrix.dig(horizontal + i, vertical + j)

                if element == "@"
                  local_count += 1
                end

                if local_count >= 4
                  break
                end
              end
            end

            if local_count < 4
              global_count += 1
              positions_to_replace << [i, j]
            end
          end
        end

        positions_to_replace.each do |a, b|
          matrix[a][b] = "."
        end

        iteration = positions_to_replace.size
      end

      global_count
    end
  end
end

# [-1, 1][0, 1][1, 1]
# [-1, 0][xxxx][1, 0]
# [-1,-1][0,-1][-1,1]