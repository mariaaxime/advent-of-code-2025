class PartOne
  class << self
    def inputs
      File.read('lib/day_two/input.txt', chomp: true)
          .split(",")
          .map { |range| range.split("-") }
    end

    def run
      result = []
      inputs.each do |first_string, second_string|
        first_digits = first_string.length
        second_digits = second_string.length

        first = first_string.to_i
        second = second_string.to_i

        # si los dos son iguales, e impares
        if first_digits == second_digits && first_digits % 2 == 1
          result << []
          next
        end

        if first_digits % 2 == 1
          initial = 10**first_digits
          digits = initial.to_s.length
          first_half = initial.to_s[0..((digits/2)-1)].to_i
        else
          first_half = first_string[0..(first_digits/2)-1].to_i
        end

        if second_digits % 2 == 1
          final = 10**(second_digits-1) - 1
          digits = final.to_s.length
          second_half = final.to_s[0..((digits/2)-1)].to_i
        else
          second_half = second_string[0..(second_digits/2)-1].to_i
        end

        result << (first_half..second_half).map do |i|
          number = "#{i}#{i}".to_i
          puts number
          number if number >= first && number <= second
        end.compact

        puts "#{first}-#{second} ---> #{first_half}-#{second_half}"
        puts "result -> #{result[-1]}"
      end

      result.flatten.sum

      # rango 67562556, 67743658
      # 8 digitos
      # tomo los 4 primeros de cada uno
      # 6756, 6774
      # 67566756, 67746774
      # el mayor entre el primero de cada uno e.g. 67562556 y 67566756 -> 67566756
      # el menor entre el segundo de cada uno e.g. 67743658 y 67746774 -> 67743658
      # los resto 176902
      # dividido entre (10^4) + 1 = 17.68 => 17
      # sumo 1 = 17 + 1 = 18

      # rango 1188511880-1188511890
      # 10 digitos
      # tomo los 5 primeros de cada uno
      # 11885, 11885
      # 1188511885, 1188511885
      # el mayor entre el primero de cada uno e.g. 1188511880 y 1188511885 -> 1188511885
      # el menor entre el segundo de cada uno e.g. 1188511890 y 1188511885 -> 1188511885
      # los resto 0
      # dividido entre (10^5) + 1 = 0
      # sumo 1 = 0 + 1 = 1

      # rango 11-22
      # 2 digitos
      # tomo los 1 primeros de cada uno
      # 1, 2
      # 11, 22
      # el mayor entre el primero de cada uno e.g. 11 y 11 -> 11
      # el menor entre el segundo de cada uno e.g. 22 y 22 -> 22
      # los resto 11
      # dividido entre (10^5) + 1 = 1
      # sumo 1 = 1 + 1 = 2


      # 9123-12332
      # si el primero es par, y el segundo impar
      # misma idea pero solo con el primero
      # desde el primero -> 9191 hasta 10^4 - 1
      # 9191 - 9999
      # los resto = 8

      # 1-18
      # si el primero es impar, y el segundo par
      # misma idea pero solo con el segundo
      # desde (10^1) -> 10 hasta el ultimo 18
      # 11, 11
      # 0 / 10
      # 0 + 1 = 1
    end
  end
end