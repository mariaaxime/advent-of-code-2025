class PartTwo
  class << self
    def inputs
      File.read('lib/day_two/input.txt', chomp: true)
          .split(",")
          .map { |range| range.split("-") }
    end

    def run
      result = []
      inputs.each do |first_string, second_string|
        first = first_string.to_i
        second = second_string.to_i
        this_result = []

        (first..second).each do |number|
          next if number < 11
          length = number.to_s.length
          divisors = get_divisors(length)

          constructed_numbers = divisors.map do |divisor|
            times = length / divisor
            part = number.to_s[0..(times)-1]

            constructed_number = ""
            divisor.times do
              constructed_number += part
            end
            constructed_number.to_i
          end

          common = constructed_numbers & [number]
          common.each {|x| this_result << x}
        end

        result << this_result
      end

      result.flatten.sum
    end

    def get_divisors(number)
      result = [number]
      i = 2
      max = number
      while i < max do
        if number % i == 0
          result << i
          max = number / i
          result << max
        end
        i += 1
      end
      result.uniq.sort
    end
  end
end