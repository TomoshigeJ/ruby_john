result = []

pre = []
pre.push 1
pre.push 2

result.push pre
p result

pre = []
pre.push 1
pre.push 3

result.push pre
p result

result = []
pre = [1,2,3]
pre2 = [4,5,6,7]
pre.each do |n|
  pre2.each do |m|
    pre3 = []
    pre3.push n
    pre3.push m
    result.push pre3
  end
end

p result