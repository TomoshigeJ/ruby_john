n = 5
m = n -1

arr1 = []
i = 1
while i <= m do
  arr1.push(i)
  i += 1
end

arr2 = []
i = 1
while i <= n do
  arr2.push(i)
  i += 1
end

p arr1
p arr2
p '-----'

arr1_s = arr1.size - 1
arr2_s = arr2.size - 1

result = []

arr1.each do |i|
  arr3 = arr2.select { |j| j > i }
  arr3.each do |k|
    pre = []
    unless i == k
      pre.push(i,k)
      p pre
      result.push(pre)
    end
  end
end

p result
