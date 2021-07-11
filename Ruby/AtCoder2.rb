#【第4問】ABC087B - Coins
# 整数の入力
a, b, c, x = 4.times.map { gets.to_i }
cnt = 0
# それぞれ繰り返す。
(0..a).each do |i|
    (0..b).each do |j|
        (0..c).each do |k|
            # それぞれの和が、xと同じになるか。
            cnt += 1 if i * 500 + j * 100 + k * 50 == x
        end
    end
end
# 「合計金額をちょうどにするcnt通り」を出力
puts cnt


#【第5問】ABC083B - Some Sums
# スペース区切りの整数の入力
n, a, b = gets.chomp.split.map(&:to_i)
ans = 0
# nまで繰り返す。
(1..n).each do |i|
    # 文字列に対して、charsメソッドは、1文字ずつ分割
    s = i.to_s.chars.map(&:to_i).sum
    ans += i if a <= s && s <= b
end
# 「n以下の整数のうち、各桁の和がa以上b以下の総和」を出力
puts ans


#【第6問】ABC088B - Card Game for Two
# 整数の入力
n = gets.to_i
# スペース区切りの整数の入力し、昇順に並び替えて、逆順にして、大きい順にする。
a = gets.chomp.split.map(&:to_i).sort.reverse
ans = 0
#　eachループで回しつつ、それぞれのデータに番号を振る
# even?：偶数であれば真を返す。
a.each_with_index{|item,i| ans += i.even? ? item : -item }
# 「得点差」を出力
puts ans
