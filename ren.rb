dog = true
puts dog ? 'こっちはtrue' : 'こっちはfalse'

hotdog = false
puts hotdog ? 'こっちはtrue' : 'こっちはfalse'

# if文
ruby_version = 2
if ruby_version > 2
	result = 'ok'
else
	result = 'サポート対象外です'
end
p result

# スマートに
ruby_version = 3
ruby_version > 2 ?  result = 'ok' : result = 'サポート対象外です'
p result

test = []
(1..10).each do |n|
  tmp = n.even? ? n * 10 : n
  test.push(tmp)
end
p test
