
def omikuji
    ["大吉","会心の一撃","ぴょん吉","じょん吉"].sample
end

def john(number)
    puts "じょーんじょーん"
    puts "1~9以外を選んだじょーん"
    puts "そんな君にはじょんが勝手に数字を選んでやるじょーん"
    puts "もう一度Enterを押すじょん"
    gets
    system('clear')
    n = [1,2,3,4,5,6,7,8,9].sample
    puts "#{n}!"
    puts "じょんが勝手に#{n}にしてやったじょん"
    puts "じょんに数字を選んでもらったみたいぴょんね"
    puts "「Enterで進む」"
    gets
    system('clear')

    return n
end

border = "-----------------------------------------------------------------"

puts "こんにちは、ぴょんきちの館へようこそ！"
puts "今日の運勢を占ってやるぴょん"
puts "今の気分で1~9の中から好きな数字を入力するぴょん(入力後はEnterを押すぴょん)"

number = gets.chomp.to_i
system('clear')


puts "...."
puts "....."
puts "......"
puts border
puts "ん?(Enterで進む)"
gets
system('clear')

puts ".........."
puts "..........zzz"
puts border
puts "こいつ..寝てやがる(Enterで起こす)"
gets
system('clear')

puts ".....!"
puts "少し寝てたぴょん"
puts border
puts "しっかりしてくれ(Enterで進む)"
gets
system('clear')

if number >= 1 && number <= 10
    puts "#{number}を選んだぴょんね"
    puts "#{number}はぴょんきちの好きな数字だぴょん"
else
    number = john(number)
end

puts "それでは占ってやるぴょん"
puts "あなたの今日の運勢は....."
puts border
puts "「占い結果を見る→Enter」"
gets
system('clear')

un = omikuji
puts "#{un}!!"
