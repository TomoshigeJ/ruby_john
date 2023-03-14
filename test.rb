n = 5
arr = []
i = 1
while i <= n do
  arr.push i
  i += 1
end
p arr
p '-----'
result = arr.combination(2).to_a
p result

