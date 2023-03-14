array_data = [["らんてくん", 98],["カンノ", 23],["ファラオ", 57],["だいそん", 84],["ひさじゅ", 100]]
 
h = Hash[*array_data.flatten]
array_sort = h.sort_by { | _, v | v }.reverse
p array_sort
p '-----'

size = array_sort.size
p size

h = array_sort.to_h
p h


h.each.with_index(1) do | (k, v),i |
  puts "#{i}位: #{k} #{v}点"
end
