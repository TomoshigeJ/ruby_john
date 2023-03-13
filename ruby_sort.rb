number_array = [3, 5, 9, 7, 1]
# ここから下に解答コードを記載する

y = number_array.size
max = y - 1

(0..(max-1)).each do |i|
  ((i + 1)..max).reverse_each do |j|
    if number_array[j] < number_array[j - 1]
      tmp = number_array[j - 1]
      number_array[j - 1] = number_array[j]
      number_array[j] = tmp
    end
  end
 end

 puts number_array