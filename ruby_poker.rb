# 検証用手札は手入力
card_array = ['D2', 'D4', 'D1', 'D5', 'D13']
puts "選択したカードは #{card_array}"
puts "-------------------"

egara = []
num =[]
card_array.each do |n|
  tmp = n.slice(/[A-Z]+/)
  egara.push(tmp)
  tmp = n.slice(/[0-9]+/).to_i
  num.push(tmp)
end

# 絵柄のみ
puts "egaraは #{egara}"

# 絵柄の重複数をチェック
egara_uniq_hash = egara.group_by(&:itself).map{ |k,v| [k,v.size] }.to_h
uniq_egara_num = egara_uniq_hash.values.max
puts "絵柄の最大重複数は #{uniq_egara_num}"

# 数値のみ
puts "numは #{num}"

# 数字の重複数をチェック
num_uniq_hash = num.group_by(&:itself).map{ |k,v| [k,v.size] }.to_h
uniq_num_num = num_uniq_hash.values.max
puts "数字の最大重複数は #{uniq_num_num}"

puts "検証開始....."
puts "-------------------"
puts "結果は=>"

# 1.ロイヤルストレートフラッシュの検証
# 5枚同じ絵柄で10,11,12,13,1の数値
roy_num = [10,11,12,13,1]
if uniq_egara_num == 5 and num.eql?(roy_num)
  puts 'ロイヤルストレートフラッシュ'
  # 処理を終了する
  exit
end

# 2.ストレートフレッシュの検証
# 5枚同じ絵柄で数字が順番に並んでいる
sort_num = num.sort
if uniq_egara_num == 5 and sort_num == num
  puts 'ストレートフラッシュ'
  exit
end

# 3.フォア・カードの検証
# 4枚同じ数字が揃っている(トランプなので5枚同じ数字にはならない)
if uniq_num_num == 4
  puts 'フォア・カード'
  exit
end

# 4.フルハウスの検証
# 同じ数字が3枚と2枚の組み合わせ
num_uniq_hash_with_index = {}
num_uniq_hash.each.with_index(1) do | (k,v), i |
  num_uniq_hash_with_index.store(i, v)
end

if num_uniq_hash_with_index.has_key?(2)
  if num_uniq_hash_with_index[1] + num_uniq_hash_with_index[2] == 5
    puts 'フルハウス'
    exit
  end
end

# 5.フラッシュの検討
# 同じ絵柄が5枚揃う
if uniq_egara_num == 5
  puts 'フラッシュ'
  exit
end

# 6.ストレートの検証
# 数字が5枚連続に続く
if sort_num == num
  puts 'ストレート'
  exit
end

# 7.スリーカードの検証
# 同じ数字が3枚揃う
if uniq_num_num == 3
  puts 'スリーカード'
  exit
end

# 8.ツウ・ペアの検証
# 同じ数字2つが2組
if num_uniq_hash.values.count(2) == 2
  puts 'ツウ・ペア' 
  exit
end

# 9.ワン・ペアの検証
if num_uniq_hash.values.count(2) == 1
  puts 'ワン・ペア'
  exit
end

# 10.役なし(上記のいずれにも該当しない)
puts '役はありません'
