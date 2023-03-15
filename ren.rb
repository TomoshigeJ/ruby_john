card_array = ['D10', 'D11', 'D12', 'S13', 'D1']
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
# 数値のみ
puts "numは #{num}"

# 絵柄の重複数をチェック
egara_uniq_hash = egara.group_by(&:itself).map{ |k,v| [k,v.size]}.to_h
uniq_num = egara_uniq_hash.values.max
puts "絵柄の重複数は #{uniq_num}"

# 数字の重複数をチェック


puts "検証開始....."
puts "-------------------"
puts "結果は=>"

# 1.ロイヤルストレートフラッシュの検証
# ロイヤルストレートフラッシュの場合数値
roy_num = [10,11,12,13,1]
if uniq_num == 5 and num.eql?(roy_num)
  puts 'ロイヤルストレートフラッシュ'
  # 処理を終了する
  exit
end

# 2.ストレートフレッシュの検証
# 同種札で数字が順番に並んでいる
sf_num = num.sort
if uniq_num == 5 and sf_num == num
  puts 'ストレートフラッシュ'
  exit
end

# 3.フォア・カード
# 

p 'next'
