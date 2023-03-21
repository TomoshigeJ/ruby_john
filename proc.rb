proc = Proc.new {puts 'proc John'}
proc.call

p proc
p proc.object_id
p proc.class

p '-----'

proc = proc { |john| puts "#{john}は犬です" }
proc.call('じょん')

p '-----'

lambda = -> { puts 'lambda John'}
lambda.call

p lambda
p lambda.object_id
p lambda.class

p '----'

hs_p = proc { |a,b,c| p "aは#{a},bは#{b},cは#{c}" }
hs_p.call(1,2)

hs_l = lambda { |a,b,c| p "aは#{a},bは#{b},cは#{c}" }

#これはエラーになる
#hs_l.call(1,2)

#引数の数が同じでないとNG
hs_l.call(1,2,3)

# -> の場合引数の渡し方が少し違う
hs = ->(x,y) { p x * y}
hs.call(2,8)

hs = lambda { |x,y| p x * y }
hs.call(2,10)

p '-----'

def proc_john
  p = proc {return puts 'proc_block'}
  p.call
  return puts 'proc_method'
end

puts proc_john

def lambda_john
  l = lambda {return puts 'lambda_block'}
  l.call
  return puts 'lambda_method'
end

puts lambda_john
