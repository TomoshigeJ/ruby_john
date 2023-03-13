arr = [4,5,2,1,3]
size = arr.size
max = size - 1

(0..(max-1)).each do |i|
  p "#{i}回目のi"
  ((i+1)..max).reverse_each do |j|
    p j
    if arr[j] < arr[j-1]
      tmp = arr[j-1]
      arr[j-1] = arr[j]
      arr[j] = tmp
    end
  end
end

p arr