array = ['じょん', 'じょん2', 'じょん3', 'じょん4', 'じょん5']
p 'each_with_indexの場合'
p array.each_with_index.select { |s,index| index > 2 }
p '-----'

p 'each.with_indexの場合'
p array.each.with_index(1).select { |s,index| index > 2 }
p '-----'