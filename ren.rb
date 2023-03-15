card_array = ['S13', 'D13', 'H10', 'K13', 'D10']
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
puts "絵柄の重複数は #{uniq_egara_num}"

# 数値のみ
puts "numは #{num}"

# 数字の重複数をチェック
num_uniq_hash = num.group_by(&:itself).map{ |k,v| [k,v.size] }.to_h
uniq_num_num = num_uniq_hash.values.max
puts "数字の重複数は #{uniq_num_num}"

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
sf_num = num.sort
if uniq_egara_num == 5 and sf_num == num
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
p num_uniq_hash


puts '役はありません'
